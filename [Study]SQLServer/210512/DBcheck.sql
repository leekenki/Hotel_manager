-- DB ��ȸ
EXEC sp_helpdb;

--���̺� ���� ��ȸ
EXEC sp_tables @table_type = "'TABLE'"

--�÷� ��ȸ
EXEC sp_columns @table_name = 'buyTb1' , @table_owner = 'dbo'; --������ �ֿܼ����� �̷��� �f�� ��� �׳� ġ�� �׳� ����.
