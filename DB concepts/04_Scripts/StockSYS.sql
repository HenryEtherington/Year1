--Henry Etherington

DROP TABLE saleItems;
DROP TABLE Sales;
DROP TABLE Stock;
DROP TABLE  Suppliers;

CREATE TABLE Suppliers
(Supp_Id numeric(3),
Supp_Name Char(20)NOT NULL UNIQUE,
Tel_No char(14),
CONSTRAINT pk_Suppliers PRIMARY KEY (Supp_Id));

CREATE TABLE Stock
(Stock_No  numeric (4),
Description CHAR (20)NOT NULL,
Cost_Price numeric(5,2),
Sale_Price numeric(5,2),
Qty numeric (3) DEFAULT 0 ,
Supp_Id numeric (3),
CONSTRAINT pk_Stock PRIMARY KEY (Stock_No),
CONSTRAINT fk_Stock FOREIGN KEY (Supp_Id) REFERENCES Suppliers);

CREATE TABLE Sales
(Sale_Id numeric (5),
Sale_Date Date,
Sale_Value numeric(6,2),
CONSTRAINT pk_Sales PRIMARY KEY(Sale_Id));

CREATE TABLE saleItems
(Sale_Id numeric (5),
Stock_No numeric (4),
Qty_Sold numeric (3) CHECK (Qty_Sold > 0),
Unit_Price numeric(5,2),
CONSTRAINT pk_saleItems PRIMARY KEY (Sale_Id,Stock_No) ,
CONSTRAINT fk_SI_Sales FOREIGN KEY (Sale_Id)  REFERENCES Sales,
CONSTRAINT fk_SI_Stock FOREIGN KEY (Stock_No) REFERENCES Stock);
