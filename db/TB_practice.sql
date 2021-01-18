--TB �ǽ�
--#1 �� ������б��� �а� �̸��� �迭�� ǥ���Ͻÿ�. ��, ��� ����� "�а� ��", "�迭" ���� ǥ���ϵ��� �Ѵ�.

SELECT DEPARTMENT_NAME AS �а���,
       CATEGORY AS �迭
FROM TB_DEPARTMENT ;

--#2 �а��� �а� ������ ������ ���� ���·� ȭ�鿡 ����Ѵ�.
--������а��� ������ 20�� �Դϴ�.
--������а��� ������ 36�� �Դϴ�.

SELECT DEPARTMENT_NAME || '�� ������' || CAPACITY || '�Դϴ�.' AS "�а��� ����"
FROM TB_DEPARTMENT;

--#3 "������а�" �� �ٴϴ� ���л� �� ���� �������� ���л��� ã�ƴ޶�� ��û�� ���Դ�. �����ΰ�? (�����а��� '�а��ڵ�'�� �а� ���̺�(TB_DEPARTMENT)�� ��ȸ�ؼ� ã�� ������ ����)
SELECT STUDENT_NAME
FROM TB_STUDENT
WHERE DEPARTMENT_NO = 001 AND ABSENCE_YN = 'Y' AND STUDENT_SSN LIKE '_______2%';

--#4 ���������� ���� ���� ��� ��ü�� ���� ã�� �̸��� �Խ��ϰ��� �Ѵ�. �� ����ڵ��� �й��� ������ ���� �� ����ڵ��� ã�� ������ SQL ������ �ۼ��Ͻÿ�.
--A513079, A513090, A513091, A513110, A513119

SELECT STUDENT_NAME 
FROM TB_STUDENT
WHERE STUDENT_NO IN ('A513079', 'A513090', 'A513091', 'A513110', 'A513119') ORDER BY STUDENT_NAME DESC

--#5 ���������� 20�� �̻� 30�� ������ �а����� �а� �̸��� �迭�� ����Ͻÿ�.
SELECT DEPARTMENT_NAME, CATEGORY 
FROM TB_DEPARTMENT
WHERE CAPACITY BETWEEN 20 AND 30 ;

--#6