#7. The highest amount of principal repayments
#We can see that the indicator DT.AMT.DLXF.CD tops the chart of average debt. This category includes repayment of long term debts.
#Countries take on long-term debt to acquire immediate capital.
#More information about this category can be found 
#here:https://datacatalog.worldbank.org/principal-repayments-external-debt-long-term-amt-current-us-0
SELECT 
    country_name, 
    indicator_name
FROM project.international_debtpdata
WHERE debt= (SELECT 
                 MAX(debt)
             FROM project.international_debtpdata
             WHERE indicator_code ='DT.AMT.DLXF.CD');
             