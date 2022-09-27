DROP TABLE booking CASCADE CONSTRAINTS;

DROP TABLE booktable CASCADE CONSTRAINTS;

DROP TABLE contacttracing CASCADE CONSTRAINTS;

DROP TABLE customer CASCADE CONSTRAINTS;

DROP TABLE employee CASCADE CONSTRAINTS;

DROP TABLE emprest CASCADE CONSTRAINTS;

DROP TABLE restaurant CASCADE CONSTRAINTS;

DROP TABLE "Table" CASCADE CONSTRAINTS;


-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE booking (
    bookingid       NUMBER(7) NOT NULL,
    bookingtime     VARCHAR(30),
    bookingpeople   NUMBER(9, 2),
    bookinglength   VARCHAR(30),
    tableid     NUMBER(7) NOT NULL,
    customer_custid NUMBER(7)
);

ALTER TABLE booking ADD CONSTRAINT booking_pk PRIMARY KEY ( bookingid,
                                                            tableid );

CREATE TABLE booktable (
    booking_bookingid NUMBER(7) NOT NULL,
    booking_custid    NUMBER(7) NOT NULL,
    table_tableid     NUMBER(7) NOT NULL,
    customer_custid   NUMBER(7)
);

ALTER TABLE booktable
    ADD CONSTRAINT booktable_pk PRIMARY KEY ( booking_bookingid,
                                              booking_custid,
                                              table_tableid );

CREATE TABLE contacttracing (
    tableid                   NUMBER(7) NOT NULL,
    contacttracingname       VARCHAR2(30),
    contacttracingemail       VARCHAR2(30),
    contacttracingaddress     VARCHAR2(30),
    contacttracingphonenumber NUMBER,
    booking_bookingid         NUMBER(7),
    booking_custid            NUMBER(7),
    table_tableid             NUMBER(7)
);

ALTER TABLE contacttracing ADD CONSTRAINT contacttracing_pk PRIMARY KEY ( tableid );

CREATE TABLE customer (
    custid      NUMBER(7) NOT NULL,
    custname    VARCHAR2(30),
    custaddress VARCHAR2(30),
    custemail   VARCHAR2(30),
    custage     NUMBER(3)
);

ALTER TABLE customer ADD CONSTRAINT customer_pk PRIMARY KEY ( custid );

CREATE TABLE employee (
    employeename        VARCHAR2(30),
    employeephonenumber NUMBER,
    employeeemail       VARCHAR2(30),
    employeedob         DATE,
    start_of_employment DATE,
    employeeid          NUMBER(7) NOT NULL
);

ALTER TABLE employee ADD CONSTRAINT employee_pk PRIMARY KEY ( employeeid );

CREATE TABLE emprest (
    employee_employeeid     NUMBER(7) NOT NULL,
    restaurant_restaurantid NUMBER(7) NOT NULL
);

ALTER TABLE emprest ADD CONSTRAINT emprest_pk PRIMARY KEY ( employee_employeeid,
                                                            restaurant_restaurantid );

CREATE TABLE restaurant (
    restaurantid    NUMBER(7) NOT NULL,
    restaddress     VARCHAR2(30),
    restphonenumber NUMBER
);

ALTER TABLE restaurant ADD CONSTRAINT restaurant_pk PRIMARY KEY ( restaurantid );

CREATE TABLE "Table" (
    tableid                 NUMBER(7) NOT NULL,
    tabletype               NUMBER,
    tablelocation           VARCHAR(30),
    restaddress             VARCHAR2(30),
    restaurant_restaurantid NUMBER(7) NOT NULL
);

ALTER TABLE "Table" ADD CONSTRAINT table_pk PRIMARY KEY ( tableid );

ALTER TABLE booking
    ADD CONSTRAINT booking_customer_fk FOREIGN KEY ( customer_custid )
        REFERENCES customer ( custid )
    NOT DEFERRABLE;

ALTER TABLE booktable
    ADD CONSTRAINT booktable_booking_fk FOREIGN KEY ( booking_bookingid,
                                                      table_tableid )
        REFERENCES booking ( bookingid,
                             tableid )
    NOT DEFERRABLE;

ALTER TABLE booktable
    ADD CONSTRAINT booktable_table_fk FOREIGN KEY ( table_tableid )
        REFERENCES "Table" ( tableid )
    NOT DEFERRABLE;

ALTER TABLE contacttracing
    ADD CONSTRAINT contacttracing_booking_fk FOREIGN KEY ( booking_bookingid,
                                                           table_tableid )
        REFERENCES booking ( bookingid,
                             tableid)
    NOT DEFERRABLE;

ALTER TABLE emprest
    ADD CONSTRAINT emprest_employee_fk FOREIGN KEY ( employee_employeeid )
        REFERENCES employee ( employeeid )
    NOT DEFERRABLE;

ALTER TABLE emprest
    ADD CONSTRAINT emprest_restaurant_fk FOREIGN KEY ( restaurant_restaurantid )
        REFERENCES restaurant ( restaurantid )
    NOT DEFERRABLE;

ALTER TABLE "Table"
    ADD CONSTRAINT table_restaurant_fk FOREIGN KEY ( restaurant_restaurantid )
        REFERENCES restaurant ( restaurantid )
    NOT DEFERRABLE;
    
