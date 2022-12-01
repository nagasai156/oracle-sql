CREATE TABLE dbo.Intervals (
 id INT NOT NULL,
 lower INT NOT NULL,
 upper INT NOT NULL,
 CONSTRAINT CHK_Intervals_upper_gteq_lower CHECK(upper >= lower)
);

INSERT INTO dbo.Intervals WITH(TABLOCK) (id, lower, upper);

SELECT id, lower, upper FROM dbo.Stage;