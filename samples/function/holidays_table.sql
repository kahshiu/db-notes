DROP table holidays;

CREATE TABLE holidays (
	holiday_date timestamp,
	holiday_name varchar2(40),
	CONSTRAINT pk_holidays PRIMARY KEY (holiday_date)
);

INSERT INTO holidays VALUES (TO_DATE('2025-05-01', 'YYYY-MM-DD'), 'labour day');
INSERT INTO holidays VALUES (TO_DATE('2025-08-31', 'YYYY-MM-DD'), 'malaysia national day');
INSERT INTO holidays VALUES (TO_DATE('2025-12-25', 'YYYY-MM-DD'), 'christmas day');
INSERT INTO holidays VALUES (TO_DATE('2025-02-01', 'YYYY-MM-DD'), 'federal day');
INSERT INTO holidays VALUES (TO_DATE('2025-03-07', 'YYYY-MM-DD'), 'random holiday1');
INSERT INTO holidays VALUES (TO_DATE('2025-03-10', 'YYYY-MM-DD'), 'random holiday2');
