-- Library Management System
-- creating 
create table branch(
	branch_id VARCHAR(10) ,
	manager_id VARCHAR(10),
	branch_address VARCHAR(10),
	contact_no VARCHAR(10)
);
alter table employees
add primary key (emp_id);

alter table issued_status
add constraint fk_employees
foreign key (issued_emp_id)
references employees(emp_id);

alter table employees
add constraint fk_branch
foreign key (branch_id)
references branch(branch_id);

alter table return_status
add constraint fk_issued_status
foreign key (issued_id)
references issued_status(issued_id);



