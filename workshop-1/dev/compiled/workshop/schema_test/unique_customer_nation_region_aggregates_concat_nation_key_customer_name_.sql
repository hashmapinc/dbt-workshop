



select count(*)
from (

    select
        concat(nation_key, customer_name)

    from JAVEN_TESTING.TEST.customer_nation_region_aggregates
    where concat(nation_key, customer_name) is not null
    group by concat(nation_key, customer_name)
    having count(*) > 1

) validation_errors

