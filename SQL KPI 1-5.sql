create database bank_analytics;

use bank_analytics;

select * from bank_data;

select count(*) from bank_data;

# KPI 1
select year_issue_d as Year, sum(loan_amnt) as 'Loan Amount' from bank_data
group by year
order by year;

# KPI 2
select Grade, Sub_Grade, sum(revol_bal) as Revol_Bal from bank_data
group by grade, sub_grade
order by grade, sub_grade;

# KPI 3
select verification_status, sum(total_pymnt) as total_payment from bank_data
where verification_status = 'Verified' or verification_status = 'Not Verified'
group by verification_status;

# KPI 4
select addr_state as State, max(last_credit_pull_d) as Last_Credit_Pull_Date, Loan_Status from bank_data
group by addr_state, loan_status;

# KPI 5
select Home_Ownership, max(last_pymnt_d) as Last_Payment_Date from bank_data
group by home_ownership
order by last_payment_date;