#9. Other viable debt issues and conclusion
#There are a total of six debt indicators in which all the countries listed in our dataset have taken debt.
#The indicator DT.AMT.DLXF.CD is also there in the list. So, this gives us a clue that all these countries are suffering from a common economic issue.
#But that is not the end of the story, a part of the story rather.
#Let's change tracks from debt_indicators now and focus on the amount of debt again.
#Let's find out the maximum amount of debt across the indicators along with the respective country names. With this, we will be in a position to identify the other plausible economic issues a country might be going through. By the end of this section, we will have found out the debt indicators in which a country owes its highest debt.
#In this notebook, we took a look at debt owed by countries across the globe.
#We extracted a few summary statistics from the data and unraveled some interesting facts and figures. We also validated our findings to make sure the investigations are correct.

SELECT 
    country_name, indicator_code, MAX(debt) AS maximum_debt
FROM
    project.international_debtpdata
GROUP BY 1 , 2
ORDER BY 3 DESC
LIMIT 10;