


create table PROJ(
DNO varchar2(3)constraint dno_fk_dept_cons REFERENCES DEPT(DNO) not null,
PRJ_NO varchar2(5) constraint P_likePRJNO_Cons check (PRJ_NO like 'p%')not null,
PRJ_NAME varchar2(10),
PRJ_CREDIT number(2) constraint PRJ_CREDIT_RANGE_Cons check(PRJ_CREDIT BETWEEN 1 and 10),
STRT_DATE date,
END_DATE date,constraint ENDDATE_GRT_STRT_Cons check(END_DATE>STRT_DATE));


