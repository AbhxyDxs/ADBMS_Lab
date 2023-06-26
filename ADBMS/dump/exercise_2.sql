use insurance;

select * from person where name like 'a%';

select accident.report_number, license, driver_id, damage_amount, date 
from accident, participated 
where accident.report_number=participated.report_no 
AND damage_amount>10000;

select accident.report_number, license, driver_id, damage_amount, date 
from accident, participated 
where accident.report_number=participated.report_no 
AND date BETWEEN '2021/01/01' and '2023/12/31';

select vehicle.license, model, year, name, address 
from vehicle, person, owns 
where owns.driver_id = person.driver_id 
and owns.license=vehicle.license;

