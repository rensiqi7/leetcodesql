select FirstName,LastName,City,State from Person t1 left join Address t2 on t1.PersonId=t2.PersonId;