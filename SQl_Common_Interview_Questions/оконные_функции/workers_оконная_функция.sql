
-- 1) пробование обычных оконных функций.
-- select "Department", "Employee", "Salary",
--        row_number() over (partition by "Department") as rownumber,
--        min("Salary") over(partition by "Department") as minsalary,
--        max("Salary") over(partition by "Department") as maxsalary,
--        avg("Salary") over(partition by "Department") as avgsalary
--
-- from demo.bookings.workers as workers;
--

-- 2) улучшаем запрос -
-- Напишите SQL-запрос, чтобы найти сотрудников, которые получают три самые высокие зарплаты в каждом отделе.
select * from
      (
          select "Department", "Employee", "Salary",
                 row_number() over (partition by "Department" order by "Salary" desc) as rownumber
          from demo.bookings.workers as workers
) as result
where rownumber IN (1,2,3);

