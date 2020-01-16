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
-- 문제1) EMP 테이블에서 사원번호가 7521인 사원과 업무가 같고
-- 급여가 7934인 사원보다 많은 사원의 사원번호,이름,담당업무,입사일자,급여를 출력하여라.

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


-- 문제2) EMP 테이블에서 급여의 평균보다 적은 사원의 사원번호,이름,담당업무,급여,부서번호를 출력하여라

select empno,ename,job,sal,deptno
from emp
where sal < (
    select avg(sal)
    from emp
)
;

-- 문제3) EMP 테이블에서 사원의 급여가 20번 부서의 최소 급여보다 많은 부서를 출력하여라.


select deptno
from emp
group by deptno
having min(sal) > (
    select min(sal)
    from emp
    where deptno=20
)
;

--잘못된 예
select empno, ename, job, hiredate, sal, deptno
from emp
where sal=(
    select min(sal)
    from emp
    group by deptno
)
;
--잘된 예
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

--문제5) EMP 테이블에서 업무별로 최소 급여를 받는
--사원의 사원번호,이름,업무,입사일자,급여,부서번호를 출력하여라

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

--문제6) EMP 테이블에서 30번 부서의 최소 급여를 받는 사원 보다 많은 급여를 받는 
--사원의 사원번호,이름,업무,입사일자,급여,부서번호를 출력하여라. 단 30번 부서는 제외

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

-- 집합 연산자
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
