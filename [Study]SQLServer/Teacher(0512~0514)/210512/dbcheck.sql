-- DB조회
EXEC sp_helpdb;

-- 테이블 정보 조회
EXEC sp_tables @table_type = "'TABLE'";

-- 컬럼 조회
EXEC sp_columns @table_name = 'buyTbl', @table_owner = 'dbo';
