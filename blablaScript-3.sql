--
select e.employee_name, s.monthly_salary from employee_salary es
join employees e on es.employee_id=e.id
join salary s on es.salary_id=s.id;

--
select e.employee_name, s.monthly_salary from employee_salary es
join employees e on es.employee_id=e.id
join salary s on es.salary_id=s.id
where s.monthly_salary<2000;

--
select e.employee_name, s.monthly_salary from employee_salary es
join employees e on es.employee_id=e.id
join salary s on es.salary_id=s.id
where e.employee_name is null;

--
select e.employee_name, s.monthly_salary from employee_salary es
join employees e on es.employee_id=e.id
join salary s on es.salary_id=s.id
where e.employee_name is null and s.monthly_salary<2000;

--
select e.employee_name, s.monthly_salary from employee_salary es
join employees e on es.employee_id=e.id
join salary s on es.salary_id=s.id
where s.monthly_salary=0;

--
select e.employee_name, r.roles_name from roles_employee er
join employees e on er.employee_id=e.id 
join roles r on er.roles_id=r.id; 

--
select e.employee_name, r.roles_name from roles_employee er
join employees e on er.employee_id=e.id 
join roles r on er.roles_id=r.id
where r.roles_name like ('%Java%');

--
select e.employee_name, r.roles_name from roles_employee er
join employees e on er.employee_id=e.id 
join roles r on er.roles_id=r.id
where r.roles_name like ('%Python%');

--
select e.employee_name, r.roles_name from roles_employee er
join employees e on er.employee_id=e.id 
join roles r on er.roles_id=r.id
where r.roles_name like ('%QA%');

--
select e.employee_name, r.roles_name from roles_employee er
join employees e on er.employee_id=e.id 
join roles r on er.roles_id=r.id
where r.roles_name like ('%Manual%QA%');

--
select e.employee_name, r.roles_name from roles_employee er
join employees e on er.employee_id=e.id 
join roles r on er.roles_id=r.id
where r.roles_name like ('%Automation%QA%');

--
select e.employee_name, s.monthly_salary from employee_salary es
full join employees e on es.employee_id=e.id
full join salary s on es.salary_id=s.id
join roles_employee er on e.id=er.employee_id 
join roles r on er.roles_id=r.id
where r.roles_name like ('%Junior%');

--
select e.employee_name, s.monthly_salary from employee_salary es
full join employees e on es.employee_id=e.id
full join salary s on es.salary_id=s.id
join roles_employee er on e.id=er.employee_id 
join roles r on er.roles_id=r.id
where r.roles_name like ('%Middle%');

--
select e.employee_name, s.monthly_salary from employee_salary es
full join employees e on es.employee_id=e.id
full join salary s on es.salary_id=s.id
join roles_employee er on e.id=er.employee_id 
join roles r on er.roles_id=r.id
where r.roles_name like ('%Senior%');

--
select e.employee_name, s.monthly_salary from employee_salary es
full join employees e on es.employee_id=e.id
full join salary s on es.salary_id=s.id
join roles_employee er on e.id=er.employee_id 
join roles r on er.roles_id=r.id
where r.roles_name like ('%Java%');

--
select e.employee_name, s.monthly_salary from employee_salary es
full join employees e on es.employee_id=e.id
full join salary s on es.salary_id=s.id
join roles_employee er on e.id=er.employee_id 
join roles r on er.roles_id=r.id
where r.roles_name like ('%Python%');

--
select e.employee_name, s.monthly_salary from employee_salary es
full join employees e on es.employee_id=e.id
full join salary s on es.salary_id=s.id
join roles_employee er on e.id=er.employee_id 
join roles r on er.roles_id=r.id
where r.roles_name like ('%Junior%Python%');

--
select e.employee_name, s.monthly_salary from employee_salary es
full join employees e on es.employee_id=e.id
full join salary s on es.salary_id=s.id
join roles_employee er on e.id=er.employee_id 
join roles r on er.roles_id=r.id
where r.roles_name like ('%Middle%JavaScript%');

--
select e.employee_name, s.monthly_salary from employee_salary es
full join employees e on es.employee_id=e.id
full join salary s on es.salary_id=s.id
join roles_employee er on e.id=er.employee_id 
join roles r on er.roles_id=r.id
where r.roles_name like ('%Senior%Java%');

--
select e.employee_name, s.monthly_salary from employee_salary es
full join employees e on es.employee_id=e.id
full join salary s on es.salary_id=s.id
join roles_employee er on e.id=er.employee_id 
join roles r on er.roles_id=r.id
where r.roles_name like ('%Junior%QA%');

--
select avg(s.monthly_salary) as avg_salary from salary s
left join employee_salary es on s.id=es.salary_id 
left join employees e on es.employee_id=e.id
left join roles_employee er on e.id=er.employee_id 
left join roles r on er.roles_id=r.id
where r.roles_name like ('%Junior%');

--
select sum(s.monthly_salary) as s_salary from salary s
left join employee_salary es on s.id=es.salary_id 
left join employees e on es.employee_id=e.id
left join roles_employee er on e.id=er.employee_id 
left join roles r on er.roles_id=r.id
where r.roles_name like ('%JavaScript%');

--
select min(s.monthly_salary) as m_salary from salary s
left join employee_salary es on s.id=es.salary_id 
left join employees e on es.employee_id=e.id
left join roles_employee er on e.id=er.employee_id 
left join roles r on er.roles_id=r.id
where r.roles_name like ('%QA%');

--
 select max(s.monthly_salary) as mx_salary from salary s
left join employee_salary es on s.id=es.salary_id 
left join employees e on es.employee_id=e.id
left join roles_employee er on e.id=er.employee_id 
left join roles r on er.roles_id=r.id
where r.roles_name like ('%QA%');

--
select count(r.roles_name) from roles_employee er
join employees e on er.employee_id=e.id
join roles r on er.roles_id=r.id
where r.roles_name like ('%QA%');

--
select count(r.roles_name) from roles_employee er
join employees e on er.employee_id=e.id
join roles r on er.roles_id=r.id
where r.roles_name like ('%Middle%');

--
select count(r.roles_name) from roles_employee er
join employees e on er.employee_id=e.id
join roles r on er.roles_id=r.id
where r.roles_name like ('%developer%');

--
select sum(s.monthly_salary) as s_salary from salary s
left join employee_salary es on s.id=es.salary_id 
left join employees e on es.employee_id=e.id
left join roles_employee er on e.id=er.employee_id 
left join roles r on er.roles_id=r.id
where r.roles_name like ('%developer%');

--
select e.employee_name, s.monthly_salary, r.roles_name from employees e 
left join roles_employee er on e.id=er.employee_id 
left join roles r on r.id=er.roles_id 
left join employee_salary es on e.id=es.employee_id 
left join salary s on es.salary_id=s.id 
order by s.monthly_salary;

--
select e.employee_name, s.monthly_salary, r.roles_name from employees e 
left join roles_employee er on e.id=er.employee_id 
left join roles r on r.id=er.roles_id 
left join employee_salary es on e.id=es.employee_id 
left join salary s on es.salary_id=s.id 
where s.monthly_salary>=1700 and s.monthly_salary<=2300
order by s.monthly_salary;

--
select e.employee_name, s.monthly_salary, r.roles_name from employees e 
left join roles_employee er on e.id=er.employee_id 
left join roles r on r.id=er.roles_id 
left join employee_salary es on e.id=es.employee_id 
left join salary s on es.salary_id=s.id 
where s.monthly_salary<2300
order by s.monthly_salary;

--
select e.employee_name, s.monthly_salary, r.roles_name from employees e 
left join roles_employee er on e.id=er.employee_id 
left join roles r on r.id=er.roles_id 
left join employee_salary es on e.id=es.employee_id 
left join salary s on es.salary_id=s.id 
where s.monthly_salary=1100 and s.monthly_salary=1500 and s.monthly_salary=2000
order by s.monthly_salary;


