select UoSCode, UosName,Enrollment,MaxEnrollment,Name,Credits from uosoffering 
Join unitofstudy Using(UosCode) 
JOIN faculty on faculty.Id = InstructorId
Where Semester = ']'
AND Year = '?' 
AND UosCode not in (select UosCode from transcript where StudId = [)
AND Enrollment < MaxEnrollment; 
