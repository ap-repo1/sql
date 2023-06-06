select EMPNO,ENAME,SAL from Emp order by SAL;
select ENAME,SAL,JOB,DEPTNO from Emp order by deptno desc,SAL desc;
select ENAME,SAL,PF,HRA,DA,SAL+PF+HRA+DA as "GROSS" from (select ENAME,SAL,sal*0.12 as "PF",sal*0.15 as "HRA",sal*0.9 as "DA" from Emp) order by GROSS;
select max(SAL) from Emp where JOB='SALESMAN';
select AVG(SAL),COUNT(*) from Emp where deptno=20;
select DEPTNO,COUNT(EMPNO) from Emp group by deptno;
select DEPTNO,SUM(SAl) from Emp group by deptno;
select JOB,count(EMPNO) from Emp group by JOB order by count(EMPNO) desc;
select SUM(sal),Max(Sal),min(sal),Avg(sal) from Emp group by JOB;
select JOB,AVG(SAL) from Emp where JOB not in 'MANAGER' group by JOB;
select JOB,SUM(SAL),MAX(SAL),MIN(SAL),AVG(SAL) from Emp where deptno=20 group by JOB;
select AVG(SAL) from Emp group by deptno;
select AVG(SAL) from Emp group by deptno having COUNT(EMPNO)>5;
select JOB from Emp group by JOB having MAX(SAL)>=5000;
select SUM(SAL),MAX(SAL),MIN(SAL),AVG(SAL),JOB from Emp where deptno=20 group by JOB having  AVG(SAL)>1000;
select SUM(SAL),MAX(SAL),MIN(SAL),AVG(SAL),JOB from Emp where deptno=20 group by JOB having AVG(SAL)>1000;
select AVG(MAX(SAL)) from Emp group by deptno;
select STDDEV(SAL) from Emp group by JOB having STDDEV(SAl)>0;
select COUNT(EMPNO) from EMP where COMM>300;
select SUM(NVL(COMM,100)) total_comm from Emp group by deptno order by deptno desc;
select COUNT(EMPNO) from Emp where JOB='MANAGER';
select ENAME,NVL(TO_CHAR(COMM),'Not Applicable') COMM from Emp where ENAME like '%M%' order by ENAME desc;
select ENAME,SAL,COMM,NVL2(COMM,SAL+COMM,COMM) income from Emp where ENAME like '%M%' order by ENAME desc;
select ENAME from EMP where SUBSTR(ENAME,1,1) like UPPER(SUBSTR(ENAME,1,1));
select DISTINCT(SUBSTR(JOB,2,3)) from Emp where JOB='SALESMAN';