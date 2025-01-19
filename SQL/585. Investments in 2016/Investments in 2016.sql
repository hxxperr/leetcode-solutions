with insurances as(
    select *, lat+lon as cord
    from Insurance
),
insurances_filter_cord as(
    select cord, count(*) as cnt
    from insurances I
    group by cord
    having count(*) =1

),
insurances_filter_tiv2015 as(
    select tiv_2015, count(*) as cnt
    from insurances I
    group by tiv_2015
    having count(*) >1

)
select round(sum(tiv_2016),2) as tiv_2016
from insurances I
inner join insurances_filter_cord C
on I.cord=C.cord
inner join insurances_filter_tiv2015 tiv
on I.tiv_2015=tiv.tiv_2015