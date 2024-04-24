CREATE OR REPLACE FUNCTION format_seconds(seconds INT)
RETURNS TEXT AS $$
DECLARE
    days INT;
    hours INT;
    minutes INT;
    remaining_seconds INT;
BEGIN
    days := seconds / 86400;
    hours := (seconds % 86400) / 3600;
    minutes := (seconds % 3600) / 60;
    remaining_seconds := seconds % 60;

    RETURN days || ' days ' || hours || ' hours ' || minutes || ' minutes ' || remaining_seconds || ' seconds';
END;
$$ LANGUAGE plpgsql;