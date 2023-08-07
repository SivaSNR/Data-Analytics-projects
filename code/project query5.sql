#5. Country with the highest debt

#--->"Human beings cannot comprehend very large or very small numbers.
#--->It would be useful for us to acknowledge that fact." - Daniel Kahneman.
#--->That is more than 3 million million USD, an amount which is really hard for us to fathom.
#--->Now that we have the exact total of the amounts of debt owed by several countries,
#--->let's now find out the country that owns the highest amount of debt along with the amount.
#--->Note that this debt is the sum of different debts owed by a country across several categories.
#--->This will help to understand more about the country in terms of its socio-economic scenarios.
#--->We can also find out the category in which the country owns its highest debt. But we will leave that for now.
SELECT 
    country_name, sum(debt) AS total_debt
FROM project.international_debtpdata
GROUP BY country_name
ORDER BY total_debt DESC
LIMIT 1;
