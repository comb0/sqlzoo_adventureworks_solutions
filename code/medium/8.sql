select pd.Description
from ProductDescription as pd
join ProductModelProductDescription pmpd on (pd.ProductDescriptionID = pmpd.ProductDescriptionID)
join ProductAW as paw on (paw.ProductModelID = pmpd.ProductModelID)
where pmpd.culture = 'fr' and paw.ProductID = 736
