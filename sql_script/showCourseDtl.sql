select Year, Semester,UoSCode, UosName,Enrollment,MaxEnrollment,Name from uosoffering Join unitofstudy Using(UosCode) JOIN faculty on faculty.Id = InstructorId
Where Semester = 
	(select Semester from transcript where  UoSCode=']' AND StudId=[)
    AND Year = 
    (select Year from transcript where UoSCode = ']' AND StudId=[)
    AND UoSCode = ']';
 
