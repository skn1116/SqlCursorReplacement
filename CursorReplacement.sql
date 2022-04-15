DECLARE @i int
DECLARE @employee_id int
DECLARE @employee_table TABLE (
    idx smallint Primary Key IDENTITY(1,1)
    , employee_id int
)

-- populate employee table
INSERT @employee_table
SELECT distinct employee_id FROM SomeTable

-- enumerate the table
SET @i = 1
SET @numrows = (SELECT COUNT(*) FROM @employee_table)
IF @numrows > 0
    WHILE (@i <= (SELECT MAX(idx) FROM @employee_table))
    BEGIN

        -- get the next employee primary key
        SET @employee_id = (SELECT employee_id FROM @employee_table WHERE idx = @i)

--
        -- do something with this employee
--
   
        -- increment counter for next employee
        SET @i = @i + 1
    END
