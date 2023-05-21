select distinct s1.TranscationNo, s1.ProductNo
from sales s1, sales s2
where (s1.TranscationNo = s2.TranscationNo and (s1.Date != s2.Date or s1.CustomerNo != s2.CustomerNo)) or
      (s1.ProductNo = s2.ProductNo and (s1.ProductName != s2.ProductName)) or 
      (s1.CustomerNo = s2.CustomerNo and (s1.Country != s2.Country))
order by s1.TranscationNo, s1.ProductNo;