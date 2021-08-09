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

--#6 �� ������б��� ������ �����ϰ� ��� �������� �Ҽ� �а��� ������ �ִ�. �׷� �� ������б� ������ �̸��� �˾Ƴ� �� �ִ� SQL ������ �ۼ��Ͻÿ�.
SELECT PROFESSOR_NAME
FROM TB_PROFESSOR
WHERE DEPARTMENT_NO IS NULL;

--#7 Ȥ�� ������� ������ �а��� �����Ǿ� ���� ���� �л��� �ִ��� Ȯ���ϰ��� �Ѵ�. ��� SQL ������ ����ϸ� �� ������ �ۼ��Ͻÿ�.
SELECT STUDENT_NAME
FROM TB_STUDENT
WHERE DEPARTMENT_NO IS NULL;

--#8 ������û�� �Ϸ��� �Ѵ�. �������� ���θ� Ȯ���ؾ� �ϴµ�, ���������� �����ϴ� ������� � �������� �����ȣ�� ��ȸ�غ��ÿ�.
SELECT CLASS_NO
FROM TB_CLASS
WHERE PREATTENDING_CLASS_NO IS NOT NULL;

--#9 �� ���п��� � �迭(CATEGORY)���� �ִ��� ��ȸ�غ��ÿ�.
SELECT DISTINCT CATEGORY
FROM TB_DEPARTMENT;

--#10 02�й� ���� �����ڵ��� ������ ������� �Ѵ�. ������ ������� ������ �������� �л����� �й�, �̸�, �ֹι�ȣ�� ����ϴ� ������ �ۼ��Ͻÿ�.
SELECT * --STUDENT_NO, STUDENT_NAME, STUDENT_SSN
FROM TB_STUDENT
WHERE ABSENCE_YN = 'N' AND STUDENT_ADDRESS LIKE '����%' AND ENTRANCE_DATE LIKE '02%';

--#ADDITIONAL SELECT �Լ�
--#1 ������а�(�а��ڵ� 002) �л����� �й��� �̸�, ���� �⵵�� ���� �⵵�� ���� ������ ǥ���ϴ� SQL ������ �ۼ��Ͻÿ�.( ��, ����� "�й�", "�̸�", "���г⵵" �� ǥ�õǵ��� �Ѵ�.)
SELECT STUDENT_NO AS �й�,
       STUDENT_NAME AS �̸�,
       ENTRANCE_DATE AS ���г⵵
FROM TB_STUDENT
WHERE DEPARTMENT_NO = 002 ORDER BY ENTRANCE_DATE ASC;

--#2 �� ������б��� ���� �� �̸��� �� ���ڰ� �ƴ� ������ �� �� �ִٰ� �Ѵ�. �� ������ �̸��� �ֹι�ȣ�� ȭ�鿡 ����ϴ� SQL ������ �ۼ��� ����.
--(* �̶� �ùٸ��� �ۼ��� SQL ������ ��� ���� ����� �ٸ��� ���� �� �ִ�. ������ �������� �����غ� ��)
SELECT PROFESSOR_NAME, PROFESSOR_SSN
FROM TB_PROFESSOR
WHERE PROFESSOR_NAME NOT LIKE '___';

--#3�� ������б��� ���� �������� �̸��� ���̸� ����ϴ� SQL ������ �ۼ��Ͻÿ�.
--�� �̶� ���̰� ���� ������� ���� ��� ������ ȭ�鿡 ��µǵ��� ����ÿ�.
--(��, ���� �� 2000�� ���� ����ڴ� ������ ��� ����� "�����̸�", "����"�� �Ѵ�. ���̴� ���������� ����Ѵ�.)
SELECT *
FROM TB_PROFESSOR;

SELECT PROFESSOR_NAME AS �����̸�,
       PROFESSOR_SSN AS ����
       TO_CHAR(SYSDATA, 'YYYY') - TO_CHAR(SUBSTR(PROFESSOR_SSN, 1, 4))
       
FROM TB_PROFESSOR;

--#4�������� �̸� �� ���� ������ �̸��� ����ϴ� SQL ������ �ۼ��Ͻÿ�. ��� ����� �̸� �� �������� �Ѵ�. (���� 2���� ���� ������ ���ٰ� �����Ͻÿ�)
SELECT SUBSTR(PROFESSOR_NAME, 2, 2) AS "�̸�"
FROM TB_PROFESSOR

--#5�� ������б��� ����� �����ڸ� ���Ϸ��� �Ѵ�. ��� ã�Ƴ� ���ΰ�? �̶�, 19�쿡 �����ϸ� ����� ���� ���� ������ �����Ѵ�.
SELECT STUDENT_NO, STUDENT_NAME
FROM TB_STUDENT
WHERE SUBSTR(STUDENT_SSN, 1, 2);

SELECT *
FROM TB_STUDENT
WHERE SUBSTR(STUDENT_SSN, 1, 2)

--#6. 2020 �� ũ���������� ���� �����ΰ�?
SELECT  TO_CHAR(TO_DATE('20201225', 'YYYYMMDD'), 'DAY')
FROM    DUAL;

--#7. TO_DATE('99/10/11','YY/MM/DD'), TO_DATE('49/10/11','YY/MM/DD') �� ���� �� �� �� �� �� ���� �ǹ��ұ�?
--�� TO_DATE('99/10/11','RR/MM/DD'), TO_DATE('49/10/11','RR/MM/DD') �� ���� �� �� �� �� �� ���� �ǹ��ұ�?
SELECT  TO_CHAR(TO_DATE('99/10/11','RR/MM/DD'), 'RRRR-MM-DD'),
        TO_CHAR(TO_DATE('49/10/11','YY/MM/DD'), 'YYYY-MM-DD')
FROM    DUAL;



























