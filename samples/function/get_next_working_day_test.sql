
SELECT get_next_working_day(SYSDATE, 1) FROM dual;

SELECT get_next_working_day(to_date('2024-03-07','YYYY-MM-DD'), 2) AS next_working_day FROM dual;
