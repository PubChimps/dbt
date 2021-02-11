with encoded_sales_stage as (
	select
		id,
		count(case when stage_name = '0' then 1 end) as isSalesStage0,
		count(case when stage_name = '1' then 1 end) as isSalesStage1,
		count(case when stage_name = '2' then 1 end) as isSalesStage2,
		count(case when stage_name = '3' then 1 end) as isSalesStage3,
		count(case when stage_name = '4' then 1 end) as isSalesStage4,
		count(case when stage_name = '5' then 1 end) as isSalesStage5,
		count(case when stage_name = '6' then 1 end) as isSalesStage6,
		count(case when stage_name = '7' then 1 end) as isSalesStage7,
		count(case when stage_name = '8' then 1 end) as isSalesStage8
	
	from `warehouse`. `salesforce__opportunity_enhanced`
	group by id
        order by id
)
