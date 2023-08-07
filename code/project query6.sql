#6. Average amount of debt across indicators
#So, it was China. A more in-depth breakdown of China's debts can be found here:https://datatopics.worldbank.org/debt/ids/country/CHN.
#We now have a brief overview of the dataset and a few of its summary statistics.
#We already have an idea of the different debt indicators in which the countries owe their debts.
#We can dig even further to find out on an average how much debt a country owes? 
#This will give us a better sense of the distribution of the amount of debt across different indicators.
SELECT 
    indicator_code AS debt_indicator,
    indicator_name,
    AVG (debt) AS average_debt
FROM project.international_debtpdata
GROUP BY 1,2
ORDER BY 3 DESC
LIMIT 10;
