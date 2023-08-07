#2. Finding the number of distinct countries
#From the first ten rows, we can see the amount of debt owed by Afghanistan in the different debt indicators. 
#But we do not know the number of different countries we have on the table. 
#There are repetitions in the country names because a country is most likely to have debt in more than one debt indicator.
#Without a count of unique countries, we will not be able to perform our statistical analyses holistically.
# In this section, we are going to extract the number of unique countries present in the table.
SELECT 
    COUNT(DISTINCT country_name) AS total_distinct_countries
FROM project.international_debtpdata;