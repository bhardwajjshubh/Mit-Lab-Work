SQL> desc dept
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DNO                                                VARCHAR2(3)
 DNAME                                              VARCHAR2(10)
 LOCATION                                           VARCHAR2(9)

SQL> create table EMP(EMPNO NUMBER(4) PRIMARY KEY,
  2  ENAME VARCHAR(10),
  3  JOB VARCHAR2(9) constraint JOB_CHK_Cons check ( JOB like 'CLRK%' 'MGR%' 'A.MGR%' 'GM%' 'CEO%'),
  4  MGRID NUMBER(4) constraint MGR_FK_EMPNO_Cons references EMP,
  5  DATE_BIRTH DATE constraint DB_Less_DBJOIN_Cons check(DATE_BIRTH < DATE_JOIN),
  6  SAL NUMBER(7,2) constraint SAL_20KMore_Cons check(SAL > 20000),
  7  COMM NUMBER(7,2) default 1000,
  8  DEPTNO VARCHAR2(3) constraint DEPTNO_FK_DEPT_Cons references DEPT on delete cascade,
  9  DATE_JOIN DATE));
JOB VARCHAR2(9) constraint JOB_CHK_Cons check ( JOB like 'CLRK%' 'MGR%' 'A.MGR%' 'GM%' 'CEO%'),
                                                                 *
ERROR at line 3:
ORA-00907: missing right parenthesis 


SQL> create table EMP(EMPNO NUMBER(4) PRIMARY KEY,
  2  ENAME VARCHAR(10),
  3  JOB VARCHAR2(9) constraint JOB_CHK_Cons check ( JOB like 'CLRK%''MGR%''A.MGR%''GM%''CEO%'),
  4  MGRID NUMBER(4) constraint MGR_FK_EMPNO_Cons references EMP,
  5  DATE_BIRTH DATE constraint DB_Less_DBJOIN_Cons check(DATE_BIRTH < DATE_JOIN),
  6  SAL NUMBER(7,2) constraint SAL_20KMore_Cons check(SAL > 20000),
  7  COMM NUMBER(7,2) default 1000,
  8  DEPTNO VARCHAR2(3) constraint DEPTNO_FK_DEPT_Cons references DEPT on delete cascade,
  9  DATE_JOIN DATE));
DATE_BIRTH DATE constraint DB_Less_DBJOIN_Cons check(DATE_BIRTH < DATE_JOIN),
                                                                            *
ERROR at line 5:
ORA-02438: Column check constraint cannot reference other columns 


SQL> spool off;
