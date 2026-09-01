WITH CAR_basetable as (SELECT 
---actions.ActionId, 
actions.AssetContactName,
reports.DateReceived,
actions.DueDate,
reports.Site,
count(ActionId) as 'Total_Actions',
        SUM(
            CASE 
                WHEN actions.Status = 'Complete' THEN 1 
                ELSE 0 
            END
        ) AS 'Total_Resolved_Actions',
        SUM(
            CASE 
                WHEN actions.Status = 'active' THEN 1 
                ELSE 0 
            END
        ) AS 'Total_Unresolved_Actions'
FROM 
[WWCompApp].[ComplianceAssessmentActions] actions
	LEFT JOIN [WWCompApp].[ComplianceAssessmentReports] reports 
		on reports.ReportId = actions.ReportId
	LEFT JOIN [WWCompApp].[ComplianceAssessmentConditions] as conditions 
		on conditions.ReportId = reports.ReportId and conditions.PermitCondition = actions.PermitCondition
	GROUP BY 
	actions.AssetContactName,
reports.DateReceived,
actions.DueDate,
actions.Status,
reports.Site)

SELECT * FROM CAR_basetable


