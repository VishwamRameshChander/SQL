Insert into Credit_Report (Ref_ID,Gender,File_Status,Phone_Number,Cibil,Address,City,Surrogate,State,Approved_Amount,Approval_Type,Customer_Name)
Values (1,'Male','Approved',9380,0001,'454Street','Chennai','Ownhouse','TN',30000,'Manual','RameshChander');

Insert into Credit_Report (Ref_ID,Gender,File_Status,Phone_Number,Cibil,Address,City,Surrogate,State,Approved_Amount,Approval_Type,Customer_Name)
Values (2,'Female','Approved',9940,840,'10Street','Vijayawada','Cibil','AP',100000,'Auto','UshaRamesh');

Insert into Credit_Report (Ref_ID,Gender,File_Status,Phone_Number,Cibil,Address,City,Surrogate,State,Approved_Amount,Approval_Type,Customer_Name)
Values (3,'Male','Approved',9962,773,'30Street','Kochi','Salary','Kerala',60000,'Manual','Vishwam');

Insert into Credit_Report (Ref_ID,Gender,File_Status,Phone_Number,Cibil,Address,City,Surrogate,State,Approved_Amount,Approval_Type,Customer_Name)
Values (4,'Male','Approved',9884,0000,'45Street','Chennai','CreditCard','Telangana',25000,'Manual','Rishi');

Insert into Credit_Report (Ref_ID,Gender,File_Status,Phone_Number,Cibil,Address,City,Surrogate,State,Approved_Amount,Approval_Type,Customer_Name)
Values (5,'Male','Declined',98846,732,'63Street','Chennai','Ownhouse','TN',0,'Manual','Vishnu');

Insert into Credit_Report (Ref_ID,Gender,File_Status,Phone_Number,Cibil,Address,City,Surrogate,State,Approved_Amount,Approval_Type,Customer_Name)
Values (6,'Male','Approved',123456,775,'454Street','Chennai','Banking','TN',50000,'Auto','Alex');

Select Ref_ID,Customer_Name,File_Status,Surrogate,Approval_Type,Approved_Amount FROM Credit_Report;
