create trigger enoughStu
after update on uosoffering
for each row
begin

if old.Enrollment+1 < old.MaxEnrollment/2 then
	UPDATE monitor set UoSCode = old.UoSCode,
						Semester = old.Semester,
                        monitor.Year = old.Year,
                        flag = 1
                        WHERE Num = 1;
   
end if;
end
