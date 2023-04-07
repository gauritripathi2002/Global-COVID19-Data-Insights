select *
from portfolioproject..coviddeaths
where continent is not null
order by 3,4

--select *
--from portfolioproject..covidvaccines
--order by 3,4

select location, date, total_cases, new_cases, total_deaths, population
from portfolioproject..coviddeaths
order by 1,2

alter table portfolioproject..coviddeaths
alter column total_cases float

alter table portfolioproject..coviddeaths
alter column total_deaths float

--looking at total cases vs total deaths
--shows likelihood of dying if you contract covid in your country
select location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as deathpercentage
from portfolioproject..coviddeaths
where location like '%india%'
order by 1,2


--looking at the total cases vs population
select location, date, total_cases,population, (total_cases/population)*100 as infectedpopulation
from portfolioproject..coviddeaths
where location like '%india%'
order by 1,2

--look at countries with highest infection rate compared to population
select location,population, max(total_cases) as highestinfectioncount ,max((total_cases/population))*100 as infectedpopulation
from portfolioproject..coviddeaths
group by location,population
order by infectedpopulation desc


--showing countries with highest death count
select location, max(cast(total_deaths as int)) as totaldeathcount
from portfolioproject..coviddeaths
where continent is not null
group by location
order by totaldeathcount desc

--lets break things down by continents

select location, max(cast(total_deaths as int)) as totaldeathcount
from portfolioproject..coviddeaths
where continent is not null
group by location
order by totaldeathcount desc

--showing the continents with the highest death counts


--looking at total population vs vaccinations



--use cte
with popvsvac (continent, location, population, new_vaccinations,rollingpeoplevaccinated)
as (
select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations as rollingpeoplevaccinated

from portfolioproject..coviddeaths dea
join portfolioproject..covidvaccines vac
  on dea.location = vac.location
  and dea.date = vac.date
  where dea.continent is not null
)
   select *
   from popvsvac


   --temp table
   drop table if exists #percentpopulationvaccinated
   create table #percentpopulationvaccinated
   (
   continent nvarchar(255),
   loaction nvarchar(255),
   date datetime,
   population numeric,
   new_vaccinations numeric,
   )

insert into #percentpopulationvaccinated
select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations as rollingpeoplevaccinated

from portfolioproject..coviddeaths dea
join portfolioproject..covidvaccines vac
  on dea.location = vac.location
  and dea.date = vac.date
  where dea.continent is not null

   select *
   from #percentpopulationvaccinated

   --creating view to save data for later visualizations
   create view percentpopulationvaccinated as
   select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations as rollingpeoplevaccinated

from portfolioproject..coviddeaths dea
join portfolioproject..covidvaccines vac
  on dea.location = vac.location
  and dea.date = vac.date
  where dea.continent is not null


  select * from percentpopulationvaccinated