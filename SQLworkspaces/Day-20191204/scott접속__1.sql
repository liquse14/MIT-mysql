select ename from emp;

select sal
from emp
where ename='FORD';

select empno, ename, job, sal
from emp
where sal > 3000;

select empno, ename, job, sal
from emp
where sal > (
                select sal
                from emp
                where ename='ALLEN'
            )
;
-- ����1) EMP ���̺��� �����ȣ�� 7521�� ����� ������ ����
-- �޿��� 7934�� ������� ���� ����� �����ȣ,�̸�,������,�Ի�����,�޿��� ����Ͽ���.

select empno, ename, job, hiredate, sal
from emp
where job=(
        select job
        from emp
        where DEPTNO=7521
    )
    and
    sal >(
        select sal
        from emp
        where deptno=7934
    )
;


-- ����2) EMP ���̺��� �޿��� ��պ��� ���� ����� �����ȣ,�̸�,������,�޿�,�μ���ȣ�� ����Ͽ���

select empno,ename,job,sal,deptno
from emp
where sal < (
    select avg(sal)
    from emp
)
;

-- ����3) EMP ���̺��� ����� �޿��� 20�� �μ��� �ּ� �޿����� ���� �μ��� ����Ͽ���.


select deptno
from emp
group by deptno
having min(sal) > (
    select min(sal)
    from emp
    where deptno=20
)
;

--�߸��� ��
select empno, ename, job, hiredate, sal, deptno
from emp
where sal=(
    select min(sal)
    from emp
    group by deptno
)
;
--�ߵ� ��
select empno, ename, job, hiredate, sal, deptno
from emp
where sal in (
    select min(sal)
    from emp
    group by deptno
)
;

select * from emp;


select empno, sal from emp;

select empno, min(sal) from emp
group by empno;

select min(sal) from emp;

--����5) EMP ���̺��� �������� �ּ� �޿��� �޴�
--����� �����ȣ,�̸�,����,�Ի�����,�޿�,�μ���ȣ�� ����Ͽ���

select empno, ename, job, hiredate, sal, deptno
from emp
where sal =(
    select min(sal)
    from emp
    group by job
)
;


select * from tabs;

select empno, ename, job, hiredate, sal, deptno
from emp
where sal IN (
    select min(sal)
    from emp
    group by job
)
;

--����6) EMP ���̺��� 30�� �μ��� �ּ� �޿��� �޴� ��� ���� ���� �޿��� �޴� 
--����� �����ȣ,�̸�,����,�Ի�����,�޿�,�μ���ȣ�� ����Ͽ���. �� 30�� �μ��� ����

select empno,ename,job,hiredate,sal,deptno
from emp
where deptno != 30 and sal > ANY (
    select sal
    from emp
    where deptno=30
);

select sal
    from emp
    where deptno=30
    order by sal desc;

select empno,ename,job,hiredate,sal,deptno
from emp
where deptno != 30 and sal > ALL (
    select sal
    from emp
    where deptno=30
);

-- ���� ������
select deptno
from dept
union
select deptno
from emp
;

select deptno
from dept
union all
select deptno
from emp
;

select deptno
from dept
intersect
select deptno
from emp
;

select deptno
from dept
minus
select deptno
from emp
;
