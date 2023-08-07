#8. The most common debt indicator
#China has the highest amount of debt in the long-term debt (DT.AMT.DLXF.CD) category.
#This is verified by The World Bank.
#It is often a good idea to verify our analyses like this since it validates that our investigations are correct.
#We saw that long-term debt is the topmost category when it comes to the average amount of debt.
#But is it the most common indicator in which the countries owe their debt? Let's find that out.
SELECT 
    indicator_code, COUNT(indicator_code) AS indicator_count
FROM
    project.international_debtpdata
GROUP BY indicator_code
ORDER BY indicator_count DESC , indicator_code DESC
LIMIT 20;

