SELECT E.name , B.bonus from Employee as E LEFT JOIN Bonus as B ON E.empId=B.empID 
WHERE B.bonus<1000 or B.bonus is null ;