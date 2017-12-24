Select Credit_Report.Customer_Name, Credit_Report.Surrogate, Credit_Report.State, Credit_Report.Approved_amount, delq_dump.Delq_Status, delq_dump.Bucket FROM Credit_Report, disb_dump, delq_dump
where Credit_Report.LOS_ID = disb_dump.LOS_ID = delq_dump.LOS_ID;

Create table Consolidated as Select * from disb_dump UNION
Select * from Credit_Report UNION 
Select * from delq_dump;

Create table Consolidated as 
[Select distinct from [Select * FROM Credit_Report, disb_dump, delq_dump]];




Create table Consolidated as
Select distinct * from Credit_Report, disb_dump, delq_dump;



Select distinct * from Credit_Report
UNION ALL
Select distinct * from disb_dump
UNION ALL
Select distinct * from delq_dump;

Create table Nextformula as
Select distinct Credit_Report.Customer_Name,Credit_Report.LOS_ID, Credit_Report.Surrogate, Credit_Report.State, Credit_Report.Approved_amount, disb_dump.Scheme, disb_dump.Current_Stage FROM Credit_Report
INNER JOIN disb_dump
ON Credit_Report.LOS_ID = disb_dump.LOS_ID;

Create table Consolidated as 
Select distinct Nextformula.LOS_ID, Nextformula.Customer_Name, Nextformula.Current_Stage, Nextformula.Scheme, Nextformula.Surrogate, delq_dump.Bucket, delq_dump.Finance_Amount, delq_dump.Delq_Status, delq_dump.Overdue_Amount from Nextformula
INNER JOIN delq_dump
ON Nextformula.LOS_ID = delq_dump.LOS_ID;

Select Distinct Ref_ID,Customer_Name, Approved_amount from Credit_Report WHERE (Approved_Amount) IN 
(Select max(Approved_Amount) from Credit_Report);


