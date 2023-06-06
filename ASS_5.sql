select EMPNO,ENAME,dname,loc from emp,dept;
select EMPNO,ENAME,Emp.deptno,dname,loc from emp,dept where emp.deptno=dept.deptno;
select ENAME,DEPT.deptno,dname,loc from emp,dept where emp.deptno(+)=dept.deptno;
select ENAME,DEPT.deptno,dname,loc from emp RIGHT OUTER JOIN dept on emp.deptno=dept.deptno;
select E1.ENAME as "WORKER" , E2.ENAME as "MANAGER" from EMP E1,EMP E2 where E1.MGR=E2.EMPNO;
select E1.ENAME AS "WORKER",E2.ENAME AS "MANAAGER" FROM EMP E1,EMP E2 WHERE E1.MGR=E2.EMPNO AND E1.HIREDATE<E2.HIREDATE;
SELECT E1.ENAME AS "WORKER",E2.ENAME AS "MANAGER",E1.SAL,E1.JOB FROM EMP E1,EMP E2 WHERE E1.MGR=E2.MGR;
SELECT E1.ENAME FROM EMP E1,EMP E2 WHERE E1.MGR=E2.EMPNO AND E1.SAL>E2.SAL;
SELECT (SELECT MIN(SAL) FROM EMP WHERE JOB=(SELECT JOB FROM EMP WHERE ENAME LIKE 'BLAKE'))-SAL FROM EMP WHERE ENAME LIKE 'MILLER';
SELECT E1.ENAME||' WORKS FOR '||E2.ENAME FROM EMP E1,EMP E2 WHERE E1.MGR=E2.EMPNO;
SELECT JOB FROM EMP WHERE DEPTNO =20 UNION SELECT JOB FROM EMP WHERE DEPTNO=30;
SELECT JOB FROM EMP WHERE DEPTNO=20 INTERSECT SELECT JOB FROM EMP WHERE DEPTNO=30;
SELECT JOB FROM EMP WHERE DEPTNO=20 MINUS SELECT JOB FROM EMP WHERE DEPTNO<>20;
SELECT ENAME FROM EMP WHERE DEPTNO = (SELECT DEPTNO FROM EMP WHERE ENAME LIKE 'MILLER');
SELECT E1.ENAME FROM EMP E1 WHERE SAL>(SELECT AVG(SAL) FROM EMP E2 WHERE HIREDATE<'01-APR-81');
SELECT JOB,AVG(SAL) FROM EMP group by (JOB) HAVING AVG(SAL)=(select MAX(AVG(SAL)) from emp GROUP BY (JOB));
SELECT * FROM EMP E1 where mgr=7698;
SELECT ENAME,DEPTNO FROM EMP WHERE SAL IN (SELECT MIN(SAL) FROM EMP GROUP BY DEPTNO);
SELECT * FROM EMP E1 WHERE SAL>(SELECT AVG(SAL) FROM EMP E2 WHERE E1.DEPTNO=E2.DEPTNO);
SELECT ENAME FROM EMP WHERE DEPTNO=(SELECT DEPTNO FROM DEPT WHERE LOC IN 'DALLAS') AND SAL>(SELECT MIN(SAL) FROM EMP WHERE DEPTNO=(SELECT DEPTNO FROM DEPT WHERE LOC IN 'CHICAGO'));
SELECT E1.ENAME AS "WORKER" , E2.ENAME AS "MANAGER" FROM EMP E1,EMP E2 WHERE E1.MGR=E2.EMPNO(+);
SELECT E1.ENAME AS "WORKER" , E2.ENAME AS "MANAGER" FROM EMP E1 LEFT OUTER JOIN EMP E2 ON E1.MGR=E2.EMPNO;