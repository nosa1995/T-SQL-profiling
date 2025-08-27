USE Salesforce_Prod; 
GO

WITH cteCreatedDate AS (
    SELECT 'OrderApi__Sales_Order__c' AS TableName, CAST(CreatedDate AS date) AS CreatedDate FROM dbo.OrderApi__Sales_Order__c
    UNION ALL
    SELECT 'OrderApi__Sales_Order_Line__c', CAST(CreatedDate AS date) FROM dbo.OrderApi__Sales_Order_Line__c
    UNION ALL
    SELECT 'OrderApi__Receipt__c', CAST(CreatedDate AS date) FROM dbo.OrderApi__Receipt__c
    UNION ALL
    SELECT 'OrderApi__Receipt_Line__c', CAST(CreatedDate AS date) FROM dbo.OrderApi__Receipt_Line__c
    UNION ALL
    SELECT 'OrderApi__Renewal__c', CAST(CreatedDate AS date) FROM dbo.OrderApi__Renewal__c
    UNION ALL
    SELECT 'OrderApi__Subscription__c', CAST(CreatedDate AS date) FROM dbo.OrderApi__Subscription__c
    UNION ALL
    SELECT 'OrderApi__Item__c', CAST(CreatedDate AS date) FROM dbo.OrderApi__Item__c
    UNION ALL
    SELECT 'OrderApi__Item_Class__c', CAST(CreatedDate AS date) FROM dbo.OrderApi__Item_Class__c
    UNION ALL
    SELECT 'Contact', CAST(CreatedDate AS date) FROM dbo.Contact
    UNION ALL
    SELECT 'Account', CAST(CreatedDate AS date) FROM dbo.Account
    UNION ALL
    SELECT 'npe5__Affiliation__c', CAST(CreatedDate AS date) FROM dbo.npe5__Affiliation__c
    UNION ALL
    SELECT 'OrderApi__Known_Address__c', CAST(CreatedDate AS date) FROM dbo.OrderApi__Known_Address__c
    UNION ALL
    SELECT 'MailingPreferenceAddress__c', CAST(CreatedDate AS date) FROM dbo.MailingPreferenceAddress__c
    UNION ALL
    SELECT 'MailingPreference__c', CAST(CreatedDate AS date) FROM dbo.MailingPreference__c
    UNION ALL
    SELECT 'EventApi__Attendee__c', CAST(CreatedDate AS date) FROM dbo.EventApi__Attendee__c
    UNION ALL
    SELECT 'EventApi__Event__c', CAST(CreatedDate AS date) FROM dbo.EventApi__Event__c
    UNION ALL
    SELECT 'CME__c', CAST(CreatedDate AS date) FROM dbo.CME__c
    UNION ALL
    SELECT 'Program2__c', CAST(CreatedDate AS date) FROM dbo.Program2__c
    UNION ALL
    SELECT 'PagesApi__Community_Group_Member__c', CAST(CreatedDate AS date) FROM dbo.PagesApi__Community_Group_Member__c
    UNION ALL
    SELECT 'PagesApi__Community_Group__c', CAST(CreatedDate AS date) FROM dbo.PagesApi__Community_Group__c
    UNION ALL
    SELECT 'CommunityGroupRole__c', CAST(CreatedDate AS date) FROM dbo.CommunityGroupRole__c
    UNION ALL
    SELECT 'Participation__c', CAST(CreatedDate AS date) FROM dbo.Participation__c
    -- Newly Added Tables
    UNION ALL
    SELECT 'RecordType', CAST(CreatedDate AS date) FROM dbo.RecordType
    UNION ALL
    SELECT 'User2', CAST(CreatedDate AS date) FROM dbo.User2
    UNION ALL
    SELECT 'CountrieswithIncomeLevels_c', CAST(CreatedDate AS date) FROM dbo.CountrieswithIncomeLevels_c
    UNION ALL
    SELECT 'OrderAPI_Business_Group_c', CAST(CreatedDate AS date) FROM dbo.OrderAPI_Business_Group_c
    UNION ALL
    SELECT 'OrderAPI_Subcription_Plan_c', CAST(CreatedDate AS date) FROM dbo.OrderAPI_Subcription_Plan_c
    UNION ALL
    SELECT 'OrderAPI_item_Subcription_Plan_c', CAST(CreatedDate AS date) FROM dbo.OrderAPI_item_Subcription_Plan_c
    UNION ALL
    SELECT 'OrderAPI_Payment_Gateway_c', CAST(CreatedDate AS date) FROM dbo.OrderAPI_Payment_Gateway_c
    UNION ALL
    SELECT 'OrderAPI_Payment_method_c', CAST(CreatedDate AS date) FROM dbo.OrderAPI_Payment_method_c
    UNION ALL
    SELECT 'OrderAPI_Payment_terms_c', CAST(CreatedDate AS date) FROM dbo.OrderAPI_Payment_terms_c
    UNION ALL
    SELECT 'OrderAPI_GL_account_c', CAST(CreatedDate AS date) FROM dbo.OrderAPI_GL_account_c
    UNION ALL
    SELECT 'OrderAPI_Source_Code_c', CAST(CreatedDate AS date) FROM dbo.OrderAPI_Source_Code_c
)
SELECT 
    TableName,
    CreatedDate,
    COUNT(1) AS RowCount
FROM cteCreatedDate
GROUP BY TableName, CreatedDate
ORDER BY TableName, CreatedDate ASC;
