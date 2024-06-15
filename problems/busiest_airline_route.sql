/*
-- Write a query to find the busiest route along with total ticket count
One way trip  = O
Round trip  = R
DEL - BOM & BOM - DEL are not same route

CREATE TABLE TICKETS (
    AIRLINE_NUMBER VARCHAR(10),
    ORIGIN VARCHAR(3),
    DESTINATION VARCHAR(3),
    ONEWAY_ROUND CHAR(1),
    TICKET_COUNT INT
);


INSERT INTO TICKETS (AIRLINE_NUMBER, ORIGIN, DESTINATION, ONEWAY_ROUND, TICKET_COUNT)
VALUES
    ('DEF456', 'BOM', 'DEL', 'O', 150),
    ('GHI789', 'DEL', 'BOM', 'R', 50),
    ('JKL012', 'BOM', 'DEL', 'R', 75),
    ('MNO345', 'DEL', 'NYC', 'O', 200),
    ('PQR678', 'NYC', 'DEL', 'O', 180),
    ('STU901', 'NYC', 'DEL', 'R', 60),
    ('ABC123', 'DEL', 'BOM', 'O', 100),
    ('VWX234', 'DEL', 'NYC', 'R', 90);
*/
WITH TICKETS_UPDATED AS (SELECT ORIGIN, DESTINATION, TICKET_COUNT FROM TICKETS
                         UNION ALL
                         SELECT DESTINATION AS ORIGIN, ORIGIN AS DESTINATION, TICKET_COUNT
                         FROM TICKETS
                         WHERE ONEWAY_ROUND='R')
SELECT TOP 1 ORIGIN, DESTINATION, SUM(TICKET_COUNT) AS TICKET_COUNT
FROM TICKETS_UPDATED
GROUP BY ORIGIN, DESTINATION
ORDER BY 3 DESC;