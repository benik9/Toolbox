-- #file_used
SELECT o.name, o.type, i.name, i.index_id, fg.name 
FROM sys.indexes i
JOIN sys.filegroups fg ON i.data_space_id = fg.data_space_id
JOIN sys.all_objects o ON i.object_id = o.object_id 
WHERE i.data_space_id = fg.data_space_id AND i.data_space_id = 1

SELECT name, size/128 size, size/128 - CAST(FILEPROPERTY(name, 'SpaceUsed') AS INT)/128 free
FROM sys.database_files; 

--CREATE UNIQUE CLUSTERED INDEX PK_dbo.Documents ON dbo.Documents (Id) WITH (DROP_EXISTING = ON) ON DocsFG
--ALTER TABLE dbo.Documents DROP CONSTRAINT PK_dbo.Documents 

