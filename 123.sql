use covid;
-- Identify the top 10 countries with the highest confirmed cases and fatalities.
select Country,Confirmed_x,Deaths_x
from merged_data
order by Confirmed_x desc,Deaths_x desc;

-- Compare the case fatality rate (deaths per confirmed cases) for each country.
select Country,(Deaths_x/Confirmed_x) as fatality_rate
from merged_data
order by fatality_rate desc;

-- Determine which countries have the highest recovery rates.
select Country, (Recovered_x*100/Confirmed_x) as Recovery_rate
from merged_data
order by Recovery_rate desc;

-- Retrieve country-wise confirmed cases, deaths, and recovery rates.
select Country, Confirmed_x,Deaths_x,(Recovered_x*100/Confirmed_x) as Recovery_rate
from merged_data
order by Confirmed_x desc,Deaths_x desc,Recovery_rate desc;

-- Calculate the mortality rate for each country.
select Country,(Deaths_x*100/Confirmed_x) as mortality_rate
from merged_data
order by mortality_rate desc;


-- Identify countries with the highest number of active cases.
select Country, Active_x as Active_cases
from merged_data
order by Active_cases desc;

-- Generate a heatmap to analyze the correlation between total cases, deaths, and recoveries.
select Country,Confirmed_x,Deaths_x,Recovered_x
from merged_data;

-- Plot a world map (choropleth) showing country-wise confirmed cases.
select Country,Confirmed_x
from merged_data;