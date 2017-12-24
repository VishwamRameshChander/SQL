CREATE TABLE Credit_Report 
(Ref_ID int,
Gender VarChar(6),
File_Status VarChar(50),
Phone_number Int NOT NULL,
Cibil INT,
Address VarChar(150),
City VarChar(150),
Surrogate VarChar(150),
State VarChar(50),
Approved_amount Int,
Approval_Type VarChar(150),
Customer_Name VarChar(150));


Select Ref_ID, Customer_Name, count(Approval_Type) from Credit_Report group by Approval_Type;

Select distinct Approval_Type,File_Status, count(*) from Credit_Report group by Approval_Type, File_Status;

Select distinct Surrogate,Scheme, Current_Stage,Delq_Status,Bucket, count(*) from Consolidated group by Surrogate,Scheme, Current_Stage,Delq_Status,Bucket; 

Select Dealer_Name,Count(Dealer_Name),Sum(Overdue_Amount) from delq_dump group by Dealer_Name;

Select Bucket,Surrogate, Max(Overdue_Amount) from Consolidated group by Bucket, Surrogate;