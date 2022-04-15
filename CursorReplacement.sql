DECLARE @i int
DECLARE @employee_id int
DECLARE @employee_table TABLE (
    idx smallint Primary Key IDENTITY(1,1)
    , employee_id int
)

-- populate employee table
INSERT @employee_table
SELECT distinct employee_id FROM SomeTable