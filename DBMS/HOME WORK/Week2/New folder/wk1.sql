create table dept(DNO varchar2(3) constraint DNO_UNQ_Cons UNIQUE CONSTRAINT D_LIKEDNO_Cons check(DNO LIKE 'D%'),
DNAME varchar2(10) unique,
LOCATION varchar2(9)CONSTRAINT VALID_LOC_Cons check(LOCATION IN('BNG','MNG','MUB','HYD','CHN')));

insert into dept VALUES('D1','CS','BNG');

insert into dept VALUES('D1','CS','BNG');
insert into dept VALUES('D2','FINANCE','MNG');
insert into dept VALUES('D3','SALES','MUB');
insert into dept VALUES('D4','OPERATIONS','HYD');

CREATE TABLE EMP(EMPNO NUMBER(4) PRIMARY KEY,
ENAME varchar2(10),
JOB varchar2(9) constraint JOB_CHK_Cons check(JOB IN('CLRK','MGR','A.MGR','GM','CEO')),
MGRID number(4) constraint  MGR_FK_EMPNO_Cons references EMP,
DATE_BIRTH date,  constraint DB_Less_DBJOIN_Cons check(DATE_BIRTH<DATE_JOIN),
SAL number(7,2)  constraint SAL_20LMore_Cons check(SAL>20000),
COMM number(7,2) default 1000,
DEPTNO VARCHAR2(3) constraint DEPT_FK_DEPT_Cons references DEPT(DNO) ON DELETE CASCADE,
DATE_JOIN DATE);


create table proj(
dno varchar2(3)constraint dno_fk_dept_cons REFERENCES dept(DNO) not null,
prj_no varchar2(5) constraint p_likeprjno_cons check (prj_no like 'p%')not null,
prj_name varchar2(10),
prj_credit number(2) constraint prj_credit_range_cons check(prj_credit BETWEEN 1 and 10),
strt_date date,
end_date date,constraint end_date_grt_strt_cons check(end_date>strt_date));

alter table proj add primary key(dno,prj_no);
alter table emp add (proj_id varchar2(10));
alter table emp add foreign key(deptno,proj_id) references proj;
alter table emp add constraint valid_empno_cons2 check(empno>100);
alter table dept add dept_budget number(7);
alter table proj add proj_fund number(7);
