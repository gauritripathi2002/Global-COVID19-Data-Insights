# COVID-19 Data Analysis Project

This repository contains a comprehensive analysis of COVID-19 data, focusing on various aspects like death rates, infection rates, and vaccination progress across different countries and continents. The project utilizes SQL queries to extract and manipulate data, providing insights into the pandemic's impact globally.

## Project Overview

The project involves a series of SQL queries executed on the `portfolioproject..coviddeaths` and `portfolioproject..covidvaccines` databases. These queries are designed to analyze COVID-19 related data such as total cases, deaths, and vaccination rates in different locations.

### Key Queries

1. **Basic Data Retrieval:** 
   - Extracting non-null continent data from the `coviddeaths` table.
   - Detailed data retrieval from `coviddeaths` including total cases, new cases, total deaths, and population.

2. **Data Transformation:**
   - Modifying data types of `total_cases` and `total_deaths` to `float` for more precise calculations.

3. **In-depth Analysis:**
   - Calculating the death percentage in countries like India.
   - Analyzing the infection rate compared to the total population.
   - Identifying countries with the highest infection rate and death count.

4. **Continental Analysis:**
   - Breaking down data by continents to understand regional impacts.

5. **Vaccination Analysis:**
   - Using CTEs and temporary tables to analyze vaccination data against total population.

### Future Plans

- **Apache Superset Integration:** In the near future, these queries will be implemented on SQL Apache Superset, an open-source business intelligence tool. This integration aims to enhance data visualization and dashboarding capabilities, making the insights more accessible and comprehensible.

- **Continuous Updates:** The repository will be regularly updated with new queries and analyses as the global situation evolves.

- **Expanding the Scope:** Plans to include more nuanced data points and potentially integrate data from other sources for a more holistic view of the pandemic.

## Getting Started

To run these queries, you'll need access to a SQL environment with the `portfolioproject` database. Clone the repository and use the SQL scripts provided to perform the analysis on your own system.

## Contributions

Contributions to this project are welcome. Whether it's improving the existing queries, adding new data points, or enhancing visualization, your input is valuable.



---

This project aims to contribute to the understanding of the COVID-19 pandemic through data. By analyzing trends and patterns, we can provide valuable insights that can aid in decision-making and understanding the impact of this global crisis.

