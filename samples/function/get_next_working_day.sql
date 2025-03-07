create or replace FUNCTION get_next_working_day(
    p_start_date DATE,
    p_days       NUMBER
) RETURN DATE IS
    v_next_date DATE;
	v_holiday DATE;
	v_loop BOOLEAN := TRUE;
BEGIN
	v_next_date := p_start_date + p_days;

	WHILE v_loop 
	LOOP
        -- NOTE: check if falls on saturday (index 7)/ sunday (index 1)
		v_loop := FALSE;
		IF TO_CHAR(v_next_date, 'DY', 'NLS_DATE_LANGUAGE=ENGLISH') IN ('SAT', 'SUN') THEN 
			v_next_date := v_next_date + 1;
			v_loop := TRUE;
			CONTINUE;
		END IF;

		BEGIN
			SELECT holiday_date INTO v_holiday FROM holidays WHERE holiday_date = v_next_date;
			IF v_holiday IS NOT NULL THEN
				v_next_date := v_next_date + 1;
				v_loop := TRUE;
				CONTINUE;
			END IF;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN 
				return v_next_date;
		END;
	END LOOP;
    RETURN v_next_date;
END;