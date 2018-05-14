CREATE TABLE file_name (
    filename   VARCHAR2(255)
);

CREATE SEQUENCE SEQ_CUSTOMERS
INCREMENT BY 1 
MINVALUE 1;

CREATE SEQUENCE SEQ_PRODUCTS
INCREMENT BY 1 
MINVALUE 1;

CREATE SEQUENCE SEQ_PURCHASES
INCREMENT BY 1 
MINVALUE 1;


CREATE TABLE wrk_purchases (
    paymentid           NUMBER(38),
    customerid          NUMBER(38),
    productid           NUMBER(38),
    transactiondate     DATE,
    creditcard          VARCHAR2(12 BYTE),
    creditcardnumber    VARCHAR2(19 BYTE)
);

CREATE TABLE wrk_customers(
    id              NUMBER(38),
    name            VARCHAR2(255 BYTE),
    username        VARCHAR2(255 BYTE),
    email           VARCHAR2(255 BYTE),
    dateofbirth     DATE,
    streetaddress   VARCHAR2(255 BYTE),
    city            VARCHAR2(255 BYTE),
    country         VARCHAR2(255 BYTE),
    zip             VARCHAR2(255 BYTE),
    state           VARCHAR2(10 BYTE),
    phone           VARCHAR2(100 BYTE)
);

CREATE TABLE wrk_products(
    products	            NUMBER(38),
    productname	            VARCHAR2(255 BYTE),
    companyname	            VARCHAR2(255 BYTE),
    price	                NUMBER(9,3),
    warehouselocationstate  VARCHAR2(10 BYTE)
);

CREATE TABLE fct_purchases (
    purch_surr_id NUMBER(38),
    paymentid           NUMBER(38),
    cust_surr_id          NUMBER(38),
    prod_surr_id           NUMBER(38),
    transactiondate     DATE,
    creditcard          VARCHAR2(12 BYTE),
    creditcardnumber    VARCHAR2(19 BYTE),
    isinterstate        NUMBER(2)
);

CREATE TABLE dim_customers(
    cust_surr_id         NUMBER(38),
    id              NUMBER(38),
    name            VARCHAR2(255 BYTE),
    username        VARCHAR2(255 BYTE),
    email           VARCHAR2(255 BYTE),
    dateofbirth     DATE,
    streetaddress   VARCHAR2(255 BYTE),
    city            VARCHAR2(255 BYTE),
    country         VARCHAR2(255 BYTE),
    zip             VARCHAR2(255 BYTE),
    state           VARCHAR2(10 BYTE),
    phone           VARCHAR2(100 BYTE)
);

CREATE TABLE dim_products(
    prod_surr_id                 NUMBER(38),
    products	            NUMBER(38),
    productname	            VARCHAR2(255 BYTE),
    companyname	            VARCHAR2(255 BYTE),
    price	                NUMBER(9,3),
    warehouselocationstate  VARCHAR2(10 BYTE)
);


