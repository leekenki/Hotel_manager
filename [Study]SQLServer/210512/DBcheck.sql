-- DB 조회
EXEC sp_helpdb;

--테이블 정보 조회
EXEC sp_tables @table_type = "'TABLE'"

--컬럼 조회
EXEC sp_columns @table_name = 'buyTb1' , @table_owner = 'dbo'; --예전에 콘솔에서나 이렇게 봣음 요샌 그냥 치면 그냥 나옴.
