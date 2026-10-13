# Sales Analysis Dashboard – Dundas BI

An interactive **Sales Analysis Dashboard** developed using Dundas BI to monitor sales performance, analyze daily sales trends, identify top customers, and explore product-level sales data.

## Project Overview

This project analyzes sales data through an interactive business intelligence dashboard. It provides insights into sales quantity, total sales, daily sales performance, customer activity, and product sales distribution.

The dashboard uses multiple **Data Cubes and Metric Sets**, dynamic filters, API integration, and interactive visualizations to provide a comprehensive view of sales performance.

## Skills & Tools

- **Dundas BI** – Dashboard development and interactive reporting
- **Data Cubes** – Data organization and analysis
- **Metric Sets** – Defining measures for KPIs, charts, and tables
- **KPI Development** – Sales Quantity, Total Sales, Highest Sales Day, and Lowest Sales Day
- **Data Visualization** – Combination charts and Pareto charts
- **Dynamic Filtering** – Date range and sales amount filters
- **API Integration** – Retrieving filtered sales data through API requests
- **JavaScript** – Dashboard scripting and interactive functionality
- **SQL Server** – Data source and sales data analysis
- **Report Export** – Dashboard report download functionality

## Dashboard Overview

### 1. Sales KPI Overview

![Sales Analysis Dashboard](/images/sales-analysis-dashboard.png)

Provides an overview of key sales performance indicators, including:

- Sales Quantity
- Total Sales
- Highest Sales Day
- Lowest Sales Day

### 2. Sales Trend Analysis

Displays daily sales trends and compares current-year and previous-year sales performance using a combination chart.

- Current Year Sales Change (%)
- Previous Year Sales Change (%)
- Current Sales Amount
- Previous Year Sales Amount
- Interactive checkboxes to show or hide chart series

### 3. Top Customer Analysis

Displays key information about top customer performance, including:

- Customer Name
- Total Sales
- Order Quantity

### 4. Product Sales Analysis

Uses interactive charts to analyze total sales by product.

- Pie Chart
- Pareto Chart
- Interactive radio buttons to switch between chart types

### 5. Dynamic Filtering & API Integration

Allows users to filter sales data using interactive controls.

- **Date Range Filter** – Filters dashboard data by start and end dates.
- **Sales Range Filter** – Filters sales records based on specified sales amount boundaries.
- **API Integration** – Sends filter parameters and retrieves filtered sales data.
- **Dynamic Data Table** – Displays sales details according to the selected filtering criteria.

### 6. Dashboard Controls & Export

Includes additional functionality to improve dashboard usability.

- **Download Report** – Exports the report.
- **Exit Button** – Provides an exit action.
- **Live Date and Time** – Displays the current date and time.
- **User Information** – Displays the current user's name.

## Technologies Used

- Dundas BI
- SQL Server
- AdventureWorksDW2022
- JavaScript
- API Integration
- Business Intelligence (BI)
- Data Visualization

## Key Takeaway

This project demonstrates how **Dundas BI, Data Cubes, Metric Sets, JavaScript, and API integration** can be combined to build an interactive sales analytics dashboard with dynamic filtering, KPI monitoring, and detailed sales reporting.
