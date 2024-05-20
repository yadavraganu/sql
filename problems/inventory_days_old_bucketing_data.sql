



CREATE TABLE INVENTORY
(
    ID	VARCHAR(512),
    ONHANDQUANTITY	INT,
    ONHANDQUANTITYDELTA	INT,
    EVENT_TYPE	VARCHAR(512),
    EVENT_DATETIME	DATETIME
);

INSERT INTO INVENTORY (ID, ONHANDQUANTITY, ONHANDQUANTITYDELTA, EVENT_TYPE, EVENT_DATETIME) VALUES
('TRO013', '278', '99', 'OUTBOUND', CONVERT(DATETIME,'25/05/2020 01:25:00',103)),
('TRO012', '377', '31', 'INBOUND', CONVERT(DATETIME,'24/05/2020 22:00:00',103)),
('TR0011', '346', '1', 'OUTBOUND', CONVERT(DATETIME,'24/05/2020 15:01:00',103)),
('TRO010', '346', '1', 'OUTBOUND', CONVERT(DATETIME,'23/05/2020 05:00:00',103)),
('TRO09', '348', '102', 'INBOUND', CONVERT(DATETIME,'25/04/2020 18:00:00',103)),
('TRO08', '246', '43', 'INBOUND', CONVERT(DATETIME,'25/04/2020 02:00:00',103)),
('TR007', '203', '2', 'OUTBOUND', CONVERT(DATETIME,'25/02/2020 09:00:00',103)),
('TRO06', '205', '129', 'OUTBOUND', CONVERT(DATETIME,'18/02/2020 07:00:00',103)),
('TRO05', '334', '1', 'OUTBOUND', CONVERT(DATETIME,'18/02/2020 08:00:00',103)),
('TRO04', '335', '27', 'OUTBOUND', CONVERT(DATETIME,'29/01/2020 05:00:00',103)),
('TRO03', '362', '120', 'INBOUND', CONVERT(DATETIME,'31/12/2019 02:00:00',103)),
('TRO02', '242', '8', 'OUTBOUND', CONVERT(DATETIME,'22/05/2019 00:50:00',103)),
('TRO01', '250', '250', 'INBOUND', CONVERT(DATETIME,'20/05/2019 00:45:00',103));