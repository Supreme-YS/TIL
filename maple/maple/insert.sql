/*데이터 삭제*/
/*
DELETE FROM m_orderdetail ; 
DELETE FROM m_order ;
DELETE FROM m_info ; 
DELETE FROM m_menu  ;
DELETE FROM m_staff ; 
DELETE FROM m_sampleproduct ;

*/

/*사용자 정보  */
INSERT INTO m_sampleproduct(pd_name,pd_price) values ('Samsung','20000');
INSERT INTO m_sampleproduct(pd_name,pd_price) values ('iPad','10000');
INSERT INTO m_sampleproduct(pd_name,pd_price) values ('LG','30000');


/*사용자 정보  */
INSERT INTO m_user(user_id,user_pwd,user_mail) values ('Dorothy','1234','Dorothy@mapla.com');
INSERT INTO m_user(user_id,user_pwd,user_mail) values ('Annie'  ,'1234','Annie@mapla.com'  );
INSERT INTO m_user(user_id,user_pwd,user_mail) values ('Ella'   ,'1234','Ella@mapla.com'   );
INSERT INTO m_user(user_id,user_pwd,user_mail) values ('Edward' ,'1234','Edward@mapla.com' );
INSERT INTO m_user(user_id,user_pwd,user_mail) values ('Liam'   ,'1234','Liam@mapla.com'   );
INSERT INTO m_user(user_id,user_pwd,user_mail) values ('Grace'  ,'1234','Grace@mapla.com'  );
INSERT INTO m_user(user_id,user_pwd,user_mail) values ('Lucas'  ,'1234','Lucas@mapla.com'  );
INSERT INTO m_user(user_id,user_pwd,user_mail) values ('Oliver' ,'1234','Oliver@mapla.com' );
INSERT INTO m_user(user_id,user_pwd,user_mail) values ('Ava'    ,'1234','Ava@mapla.com'    );


/*공통정보  */
INSERT INTO m_Info(type,code,name) values ('pay_choice','card','카드');
INSERT INTO m_Info(type,code,name) values ('pay_choice','cash','현금');
INSERT INTO m_Info(type,code,name) values ('status_choice','done','완료');
INSERT INTO m_Info(type,code,name) values ('status_choice','prep','준비중');
INSERT INTO m_Info(type,code,name) values ('status_choice','ord','주문');
INSERT INTO m_Info(type,code,name) values ('job_title','J10','CEO');
INSERT INTO m_Info(type,code,name) values ('job_title','J20','메니저');
INSERT INTO m_Info(type,code,name) values ('job_title','J30','사원');
INSERT INTO m_Info(type,code,name) values ('job_title','J40','부장');
INSERT INTO m_Info(type,code,name) values ('job_title','J50','인턴');
INSERT INTO m_Info(type,code,name) values ('job_title','J60','아르바이트');



/*메뉴 data  */
INSERT INTO m_menu(menuid,menuname,price) values ('M000001','프라푸치노(Frappuccino)',6100);
INSERT INTO m_menu(menuid,menuname,price) values ('M000002','아이스티(Iced Tea)',5200);
INSERT INTO m_menu(menuid,menuname,price) values ('M000003','카페모카(Caffe Moca)',5500);
INSERT INTO m_menu(menuid,menuname,price) values ('M000004','카페모카(Caffe Moca)',6100);
INSERT INTO m_menu(menuid,menuname,price) values ('M000005','아메리카노(Americano)',4100);
INSERT INTO m_menu(menuid,menuname,price) values ('M000006','카푸치노(Cappuccino)',4600);
INSERT INTO m_menu(menuid,menuname,price) values ('M000007','카라멜 마키아또(Caramel Macchiato)',5600);
INSERT INTO m_menu(menuid,menuname,price) values ('M000008','에스프레소(Espresso)',3600);
INSERT INTO m_menu(menuid,menuname,price) values ('M000009','콜드브루(Cold Brew)',4500);

/*직원  데이터 */
INSERT INTO m_staff(staffid,staffname,jobtitle,startdate,phone) values ('S000001', 'Anthony','J10','2010-01-01 10:00:00','010-4567-1245');
INSERT INTO m_staff(staffid,staffname,jobtitle,startdate,phone) values ('S000002', 'Robert Downey Jr','J20','2012-02-01 0:00:00','010-4577-5674');
INSERT INTO m_staff(staffid,staffname,jobtitle,startdate,phone) values ('S000003', 'Nyeung','J30','2017-03-01 10:00:00','010-1244-1412');
INSERT INTO m_staff(staffid,staffname,jobtitle,startdate,phone) values ('S000004', 'Jacob','J30','2019-04-01 10:00:00','010-5644-7785');
INSERT INTO m_staff(staffid,staffname,jobtitle,startdate,phone) values ('S000005', 'Minjae','J40','2020-05-01 10:00:00','010-1244-7512');
INSERT INTO m_staff(staffid,staffname,jobtitle,startdate,phone) values ('S000006', 'Bona','J50','2021-02-01 10:00:00','010-6855-4566');


/**********************< 20210207  >******************************************************************************************/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020700001', '2021-02-07', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020700002', '2021-02-07', '10:02:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020700003', '2021-02-07', '10:21:00','cash','ord');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020700004', '2021-02-07', '10:10:00','card','prep');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020700005', '2021-02-07', '10:22:00','card','ord');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020700006', '2021-02-07', '10:03:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020700007', '2021-02-07', '10:11:00','card','prep');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020700008', '2021-02-07', '10:04:00','cash','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020700009', '2021-02-07', '10:12:00','card','prep');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020700010', '2021-02-07', '10:26:00','card','ord');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020700011', '2021-02-07', '10:13:00','cash','prep');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020700012', '2021-02-07', '10:24:00','card','ord');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020700001', 'M000001',6100,1,6100 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020700001', 'M000002',5200,2,10400);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020700002', 'M000003',5500,1,5500 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020700002', 'M000004',6100,1,6100 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020700003', 'M000005',4100,3,12300);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020700004', 'M000006',4600,1,4600 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020700004', 'M000007',5600,2,11200);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020700005', 'M000008',3600,1,3600 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020700006', 'M000009',4500,1,4500 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020700007', 'M000001',6100,1,6100 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020700007', 'M000002',5200,1,5200 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020700007', 'M000003',5500,1,5500 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020700008', 'M000004',6100,1,6100 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020700009', 'M000005',4100,1,4100 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020700009', 'M000006',4600,1,4600 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020700010', 'M000007',5600,1,5600 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020700010', 'M000008',3600,1,3600 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020700011', 'M000009',4500,1,4500 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020700012', 'M000008',3600,1,3600 );





/**********************< 20210209  >******************************************************************************************/
/*주문 정보 */
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020900001', '2021-02-09' ,'10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020900002', '2021-02-09' ,'10:02:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020900003', '2021-02-09' ,'10:21:00','cash','ord');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020900004', '2021-02-09' ,'10:10:00','card','prep');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020900005', '2021-02-09' ,'10:22:00','card','ord');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020900006', '2021-02-09' ,'10:03:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020900007', '2021-02-09' ,'10:11:00','card','prep');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020900008', '2021-02-09' ,'10:04:00','cash','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020900009', '2021-02-09' ,'10:12:00','card','prep');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020900010', '2021-02-09' ,'10:26:00','card','ord');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020900011', '2021-02-09' ,'10:13:00','cash','prep');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020900012', '2021-02-09' ,'10:24:00','card','ord');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020900001', 'M000001',6100,1,6100 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020900001', 'M000002',5200,2,10400);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020900002', 'M000003',5500,1,5500 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020900002', 'M000004',6100,1,6100 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020900003', 'M000005',4100,3,12300);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020900004', 'M000006',4600,1,4600 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020900004', 'M000007',5600,2,11200);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020900005', 'M000008',3600,1,3600 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020900006', 'M000009',4500,1,4500 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020900007', 'M000001',6100,1,6100 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020900007', 'M000002',5200,1,5200 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020900007', 'M000003',5500,1,5500 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020900008', 'M000004',6100,1,6100 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020900009', 'M000005',4100,1,4100 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020900009', 'M000006',4600,1,4600 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020900010', 'M000007',5600,1,5600 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020900010', 'M000008',3600,1,3600 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020900011', 'M000009',4500,1,4500 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020900012', 'M000008',3600,1,3600 );







/**********************< 202101월  >***********************************************************-*******************************/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021010100001', '2021-01-01','10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021010200002', '2021-01-02','10:02:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021010300003', '2021-01-03','10:21:00','cash','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021010400004', '2021-01-04','10:10:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021010500005', '2021-01-05','10:22:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021010600006', '2021-01-06','10:03:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021010700007', '2021-01-07','10:11:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021010800008', '2021-01-08','10:04:00','cash','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021010900009', '2021-01-09','10:12:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021011000010', '2021-01-10','10:26:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021011100011', '2021-01-11','10:13:00','cash','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021011200012', '2021-01-12','10:24:00','card','done');

/*주문상세  입력 */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010100001', 'M000001',6100,1,6100 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010100001', 'M000002',5200,4,20800);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010200002', 'M000003',5500,3,16500);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010200002', 'M000004',6100,4,24400);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010300003', 'M000005',4100,6,24600);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010400004', 'M000006',4600,3,13800);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010400004', 'M000007',5600,2,11200);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010500005', 'M000008',3600,4,14400);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010600006', 'M000009',4500,5,22500);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010700007', 'M000001',6100,1,6100 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010700007', 'M000002',5200,5,26000);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010700007', 'M000003',5500,1,5500 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010800008', 'M000004',6100,5,30500);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010900009', 'M000005',4100,6,24600);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010900009', 'M000006',4600,1,4600 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011000010', 'M000007',5600,7,39200);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011000010', 'M000008',3600,3,10800);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011100011', 'M000009',4500,9,40500);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011200012', 'M000008',3600,3,10800);



/**********************< 202012월  >******************************************************************************************/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020120100001', '2020-12-01','10:01:00','card','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020120200002', '2020-12-02','10:02:00','card','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020120300003', '2020-12-03','10:21:00','cash','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020120400004', '2020-12-04','10:10:00','card','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020120500005', '2020-12-05','10:22:00','card','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020120600006', '2020-12-06','10:03:00','card','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020120700007', '2020-12-07','10:11:00','card','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020120800008', '2020-12-08','10:04:00','cash','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020120900009', '2020-12-09','10:12:00','card','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020121000010', '2020-12-10','10:26:00','card','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020121100011', '2020-12-11','10:13:00','cash','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020121200012', '2020-12-12','10:24:00','card','done'); 

/*주문상세  입력 */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120100001', 'M000001',6100,1,6100 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120100001', 'M000002',5200,2,10400);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120200002', 'M000003',5500,1,5500 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120200002', 'M000004',6100,3,18300);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120300003', 'M000005',4100,4,16400);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120400004', 'M000006',4600,6,27600);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120400004', 'M000007',5600,2,11200);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120500005', 'M000008',3600,7,25200);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120600006', 'M000009',4500,8,36000);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120700007', 'M000001',6100,9,54900);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120700007', 'M000002',5200,3,15600);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120700007', 'M000003',5500,4,22000);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120800008', 'M000004',6100,5,30500);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120900009', 'M000005',4100,1,4100 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120900009', 'M000006',4600,1,4600 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121000010', 'M000007',5600,3,16800);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121000010', 'M000008',3600,4,14400);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121100011', 'M000009',4500,6,27000);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121200012', 'M000008',3600,8,28800);




/**********************< 202011월  >******************************************************************************************/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020110100001', '2020-11-01','10:01:00','card','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020110200002', '2020-11-02','10:02:00','card','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020110300003', '2020-11-03','10:21:00','cash','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020110400004', '2020-11-04','10:10:00','card','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020110500005', '2020-11-05','10:22:00','card','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020110600006', '2020-11-06','10:03:00','card','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020110700007', '2020-11-07','10:11:00','card','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020110800008', '2020-11-08','10:04:00','cash','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020110900009', '2020-11-09','10:12:00','card','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020111000010', '2020-11-10','10:26:00','card','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020111100011', '2020-11-11','10:13:00','cash','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020111200012', '2020-11-12','10:24:00','card','done'); 

/*주문상세  입력 */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020110100001', 'M000001',6100,1,6100   );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020110100001', 'M000002',5200,3,15600  );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020110200002', 'M000003',5500,4,22000  );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020110200002', 'M000004',6100,5,30500  );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020110300003', 'M000005',4100,6,24600  );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020110400004', 'M000006',4600,8,36800  );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020110400004', 'M000007',5600,3,16800  );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020110500005', 'M000008',3600,5,18000  );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020110600006', 'M000009',4500,6,27000  );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020110700007', 'M000001',6100,8,48800  );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020110700007', 'M000002',5200,9,46800  );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020110700007', 'M000003',5500,10,55000 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020110800008', 'M000004',6100,1,6100   );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020110900009', 'M000005',4100,12,49200 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020110900009', 'M000006',4600,23,105800);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020111000010', 'M000007',5600,12,67200 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020111000010', 'M000008',3600,4,14400  );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020111100011', 'M000009',4500,1,4500   );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020111200012', 'M000008',3600,2,7200   );



/**********************< 202010월  >******************************************************************************************/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020100100001', '2020-10-01','10:01:00','card','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020100200002', '2020-10-02','10:02:00','card','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020100300003', '2020-10-03','10:21:00','cash','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020100400004', '2020-10-04','10:10:00','card','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020100500005', '2020-10-05','10:22:00','card','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020100600006', '2020-10-06','10:03:00','card','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020100700007', '2020-10-07','10:11:00','card','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020100800008', '2020-10-08','10:04:00','cash','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020100900009', '2020-10-09','10:12:00','card','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020101000010', '2020-10-10','10:26:00','card','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020101100011', '2020-10-11','10:13:00','cash','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020101200012', '2020-10-12','10:24:00','card','done'); 

/*주문상세  입력 */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020100100001', 'M000001',6100,1,6100    );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020100100001', 'M000002',5200,3,15600   );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020100200002', 'M000003',5500,4,22000   );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020100200002', 'M000004',6100,5,30500   );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020100300003', 'M000005',4100,6,24600   );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020100400004', 'M000006',4600,8,36800   );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020100400004', 'M000007',5600,3,16800   );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020100500005', 'M000008',3600,5,18000   );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020100600006', 'M000009',4500,6,27000   );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020100700007', 'M000001',6100,8,48800   );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020100700007', 'M000002',5200,9,46800   );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020100700007', 'M000003',5500,5,27500   );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020100800008', 'M000004',6100,1,6100    );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020100900009', 'M000005',4100,12,49200  );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020100900009', 'M000006',4600,23,105800 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020101000010', 'M000007',5600,12,67200  );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020101000010', 'M000008',3600,4,14400   );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020101100011', 'M000009',4500,1,4500    );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020101200012', 'M000008',3600,2,7200    );





/**********************< 202009월  >******************************************************************************************/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020090100001', '2020-09-01','10:01:00','card','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020090200002', '2020-09-02','10:02:00','card','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020090300003', '2020-09-03','10:21:00','cash','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020090400004', '2020-09-04','10:10:00','card','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020090500005', '2020-09-05','10:22:00','card','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020090600006', '2020-09-06','10:03:00','card','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020090700007', '2020-09-07','10:11:00','card','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020090800008', '2020-09-08','10:04:00','cash','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020090900009', '2020-09-09','10:12:00','card','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020091000010', '2020-09-10','10:26:00','card','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020091100011', '2020-09-11','10:13:00','cash','done'); 
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020091200012', '2020-09-12','10:24:00','card','done'); 


/*주문상세  입력 */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020090100001', 'M000001',6100,7,42700);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020090100001', 'M000002',5200,2,10400);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020090200002', 'M000003',5500,3,16500);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020090200002', 'M000004',6100,4,24400);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020090300003', 'M000005',4100,8,32800);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020090400004', 'M000006',4600,9,41400);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020090400004', 'M000007',5600,1,5600 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020090500005', 'M000008',3600,5,18000);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020090600006', 'M000009',4500,6,27000);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020090700007', 'M000001',6100,7,42700);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020090700007', 'M000002',5200,7,36400);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020090700007', 'M000003',5500,7,38500);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020090800008', 'M000004',6100,7,42700);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020090900009', 'M000005',4100,7,28700);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020090900009', 'M000006',4600,4,18400);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020091000010', 'M000007',5600,6,33600);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020091000010', 'M000008',3600,8,28800);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020091100011', 'M000009',4500,9,40500);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020091200012', 'M000008',3600,1,3600 );



