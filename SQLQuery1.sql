-- i create  table contain 2 table join  in one 


with CTE as(
select * from bike_share_yr_0

union all-- benfit all to remove duiplicate row 
select * from bike_share_yr_1

)
select 
       [dteday]
      ,[season]
      ,A.[yr]
      ,[mnth]
      ,[hr]
      ,[weekday]
      ,[rider_type]
      ,[riders] 
	  ,[PRICE]
      ,[COGS] 
	  ,riders*price as revenue 
	  ,riders*price-COGS as profit  
from CTE A
LEFT JOIN cost_table B
ON A.YR =B.YR