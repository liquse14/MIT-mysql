select e.empno, e.ename, e.job, d.dname, d.loc
from dept d, emp e
where d.deptno=e.deptno
/
