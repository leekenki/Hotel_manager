-- data수 295개
-- product category를 기준으로 OUTER JOIN 299 NULL 4
SELECT pd.Name AS product_Name, pd.ProductNumber
     , pd.Color, pd.StandardCost
	 , pd.ListPrice, pd.Size, pd.Weight
	 --, pc.ProductCategoryID
     , pc.Name AS category_Name
  FROM SalesLT.Product AS pd
 RIGHT OUTER JOIN SalesLT.ProductCategory AS pc
    ON pd.ProductCategoryID = pc.ProductCategoryID;

-- CUSTOMER 847개, ADDRESS 450개, CustomerAddress 417개
-- 1
SELECT c.CustomerID
     , CONCAT(c.Title, ' ', c.FirstName, ' ', c.MiddleName, ' ', c.LastName) AS FullName
     , c.CompanyName, c.EmailAddress, c.Phone
  FROM SalesLT.Customer AS c;
--2  
SELECT ad.AddressID
     , ad.PostalCode
     , CONCAT(ad.AddressLine1, ' ', ad.AddressLine2, ',', ad.City, ',', ad.StateProvince) AS addr
	 , ad.CountryRegion AS Country
  FROM SalesLT.Address AS ad
-- 3
SELECT ca.CustomerID, ca.AddressID, ca.AddressType
  FROM SalesLT.CustomerAddress AS ca

-- 최종쿼리
SELECT c.CustomerID
     , CONCAT(c.Title, ' ', c.FirstName, ' ', c.MiddleName, ' ', c.LastName) AS FullName
     , c.CompanyName, c.EmailAddress, c.Phone
	 , ca.AddressType
	 , ad.AddressID
     , ad.PostalCode
     , CONCAT(ad.AddressLine1, ' ', ad.AddressLine2, ',', ad.City, ',', ad.StateProvince) AS addr
	 , ad.CountryRegion AS Country
  FROM SalesLT.Customer AS c
 LEFT OUTER JOIN SalesLT.CustomerAddress AS ca
    ON c.CustomerID = ca.CustomerID
 LEFT OUTER JOIN SalesLT.Address AS ad
    ON ad.AddressID = ca.AddressID