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
