
-- 1) добавляется колонка sum по всем строкам
-- select id, amount,
-- sum(amount) over() as SUM
-- from demo.bookings.forwindowfunc as windowfunction;

-- 2) оконная функции по groupid
-- select id, groupid, amount,
--     sum(amount) over(partition by groupid) as sumGroupId
-- from demo.bookings.forwindowfunc as windowfunction;

-- 3) более продвинутая функция
-- select id, amount,
--     count(id) over(partition by id) as countId,
--     sum(amount) over(partition by id) as sumAmount,
--     min(amount) over(partition by id) as minAmount,
--     max(amount) over(partition by id) as maxAmount
--
-- from demo.bookings.forwindowfunc as windowfunction;
