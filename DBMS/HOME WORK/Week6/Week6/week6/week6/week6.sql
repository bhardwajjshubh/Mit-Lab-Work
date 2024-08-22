//6.1 
SQL> select job, sum(sal) sum from emp group by job;

JOB              SUM
--------- ----------
CEO            60000
GM             45000
A.MGR          54000
CLRK          513000
MGR            99000

//6.2
select dname from emp


//6.3
select ename, job from emp join dept on deptno = dno 
where dname = 'Marketing' or dname = 'Research';
ENAME      JOB
---------- ---------
Ravi       MGR
Raviraj    CLRK
Rohit      CLRK
Shubham    CLRK
Arijit     CLRK
Ravi       MGR
Nikhil     CLRK
Devrath    CLRK
Kavya      CLRK

//6.4
select ename, sal from emp where sal > (select min(sal) from emp);

ENAME             SAL
---------- ----------
Raghu           45000
Ankit           60000
Rohit           80000
Shubham         70000
Manu            54000
Arijit          68000
Mahesh          35000
Sonal           68000
Nikhil          90000
Devrath         35000
Kavya           35000

ENAME             SAL
---------- ----------
Likitha         35000

//6.5
select dname from dept join emp on deptno = dno group by dname having count(*) > 2;

DNAME
----------
Marketing
IT

//6.6
select deptno from emp having avg(sal) = (select max(avg(sal)) from emp group by deptno) group by deptno;

DEP
---
D2

//6.7
select dname from dept natural join proj group by dname having count(prj_no) > 1;

DNAME
----------
Marketing
HR
Research

//6.8


//6.9
select empno, ename, job from emp where job = (select job from emp where ename = 'Mahesh');


     EMPNO ENAME      JOB
---------- ---------- ---------
       101 Ravi       MGR
       106 Ravi       MGR
       123 Mahesh     MGR
	  
	  
//6.10
create view EMP_PRJ_VW as select * from emp where deptno = (select dno from dept where dname = 'Marketing');

View created. 

//6.11

//6.12
select * from emp order by date_join;