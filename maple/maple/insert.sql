/*데이터 삭제*/
/*
DELETE FROM mapleApp_orderdetail ; 
DELETE FROM mapleApp_order ;
DELETE FROM mapleApp_info ; 
DELETE FROM mapleApp_menu  ;
DELETE FROM mapleApp_staff ; 
DELETE FROM mapleApp_sampleproduct ;

*/

/*사용자 정보  */
INSERT INTO mapleApp_sampleproduct(pd_name,pd_price) values ('Samsung','20000');
INSERT INTO mapleApp_sampleproduct(pd_name,pd_price) values ('iPad','10000');
INSERT INTO mapleApp_sampleproduct(pd_name,pd_price) values ('LG','30000');



/*사용자 정보  */
INSERT INTO mapleApp_user(user_id,user_pwd,user_mail) values ('Dorothy','1234','Dorothy@mapla.com');
INSERT INTO mapleApp_user(user_id,user_pwd,user_mail) values ('Annie'  ,'1234','Annie@mapla.com'  );
INSERT INTO mapleApp_user(user_id,user_pwd,user_mail) values ('Ella'   ,'1234','Ella@mapla.com'   );
INSERT INTO mapleApp_user(user_id,user_pwd,user_mail) values ('Edward' ,'1234','Edward@mapla.com' );
INSERT INTO mapleApp_user(user_id,user_pwd,user_mail) values ('Liam'   ,'1234','Liam@mapla.com'   );
INSERT INTO mapleApp_user(user_id,user_pwd,user_mail) values ('Grace'  ,'1234','Grace@mapla.com'  );
INSERT INTO mapleApp_user(user_id,user_pwd,user_mail) values ('Lucas'  ,'1234','Lucas@mapla.com'  );
INSERT INTO mapleApp_user(user_id,user_pwd,user_mail) values ('Oliver' ,'1234','Oliver@mapla.com' );
INSERT INTO mapleApp_user(user_id,user_pwd,user_mail) values ('Ava'    ,'1234','Ava@mapla.com'    );


/*공통정보  */
INSERT INTO mapleApp_Info(type,code,name) values ('pay_choice','card','카드');
INSERT INTO mapleApp_Info(type,code,name) values ('pay_choice','cash','현금');
INSERT INTO mapleApp_Info(type,code,name) values ('status_choice','done','완료');
INSERT INTO mapleApp_Info(type,code,name) values ('status_choice','prep','준비중');
INSERT INTO mapleApp_Info(type,code,name) values ('status_choice','ord','주문');
INSERT INTO mapleApp_Info(type,code,name) values ('job_title','J10','CEO');
INSERT INTO mapleApp_Info(type,code,name) values ('job_title','J20','메니저');
INSERT INTO mapleApp_Info(type,code,name) values ('job_title','J30','사원');
INSERT INTO mapleApp_Info(type,code,name) values ('job_title','J40','부장');
INSERT INTO mapleApp_Info(type,code,name) values ('job_title','J50','인턴');
INSERT INTO mapleApp_Info(type,code,name) values ('job_title','J60','아르바이트');



/*메뉴 data  */
INSERT INTO mapleApp_menu(menuid,menuname,price) values ('M000001','프라푸치노(Frappuccino)',6100);
INSERT INTO mapleApp_menu(menuid,menuname,price) values ('M000002','아이스티(Iced Tea)',5200);
INSERT INTO mapleApp_menu(menuid,menuname,price) values ('M000003','카페모카(Caffe Moca)',5500);
INSERT INTO mapleApp_menu(menuid,menuname,price) values ('M000004','카페모카(Caffe Moca)',6100);
INSERT INTO mapleApp_menu(menuid,menuname,price) values ('M000005','아메리카노(Americano)',4100);
INSERT INTO mapleApp_menu(menuid,menuname,price) values ('M000006','카푸치노(Cappuccino)',4600);
INSERT INTO mapleApp_menu(menuid,menuname,price) values ('M000007','카라멜 마키아또(Caramel Macchiato)',5600);
INSERT INTO mapleApp_menu(menuid,menuname,price) values ('M000008','에스프레소(Espresso)',3600);
INSERT INTO mapleApp_menu(menuid,menuname,price) values ('M000009','콜드브루(Cold Brew)',4500);

/*직원  데이터 */
INSERT INTO mapleApp_staff(staffid,staffname,jobtitle,startdate,phone) values ('S000001', 'Dorothy','J10','2010-01-01 10:00:00','010-4567-1245');
INSERT INTO mapleApp_staff(staffid,staffname,jobtitle,startdate,phone) values ('S000002', 'Annie','J20','2012-02-01 10:00:00','010-4577-5674');
INSERT INTO mapleApp_staff(staffid,staffname,jobtitle,startdate,phone) values ('S000003', 'Ella','J30','2017-03-01 10:00:00','010-1244-1412');
INSERT INTO mapleApp_staff(staffid,staffname,jobtitle,startdate,phone) values ('S000004', 'Edward','J30','2019-04-01 10:00:00','010-5644-7785');
INSERT INTO mapleApp_staff(staffid,staffname,jobtitle,startdate,phone) values ('S000005', 'Liam','J40','2020-05-01 10:00:00','010-1244-7512');
INSERT INTO mapleApp_staff(staffid,staffname,jobtitle,startdate,phone) values ('S000006', 'Grace','J50','2021-02-01 10:00:00','010-6855-4566');
INSERT INTO mapleApp_staff(staffid,staffname,jobtitle,startdate,phone) values ('S000007', 'Lucas','J40','2020-07-01 10:00:00','010-9544-1245');
INSERT INTO mapleApp_staff(staffid,staffname,jobtitle,startdate,phone) values ('S000008', 'Oliver','J50','2020-08-01 10:00:00','010-4577-7789');
INSERT INTO mapleApp_staff(staffid,staffname,jobtitle,startdate,phone) values ('S000009', 'Ava','J40','2019-01-01 10:00:00','010-6855-1123');



/**********************< 20210207  >******************************************************************************************/
/*주문 정보*/
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021020700001', '2021-02-06 10:01:00','card','done');
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021020700002', '2021-02-06 10:02:00','card','done');
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021020700003', '2021-02-06 10:21:00','cash','ord');
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021020700004', '2021-02-06 10:10:00','card','prep');
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021020700005', '2021-02-06 10:22:00','card','ord');
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021020700006', '2021-02-06 10:03:00','card','done');
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021020700007', '2021-02-06 10:11:00','card','prep');
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021020700008', '2021-02-06 10:04:00','cash','done');
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021020700009', '2021-02-06 10:12:00','card','prep');
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021020700010', '2021-02-06 10:26:00','card','ord');
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021020700011', '2021-02-06 10:13:00','cash','prep');
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021020700012', '2021-02-06 10:24:00','card','ord');

/*주문상세  */
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020700001', 'M000001',6100,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020700001', 'M000002',5200,2);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020700002', 'M000003',5500,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020700002', 'M000004',6100,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020700003', 'M000005',4100,3);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020700004', 'M000006',4600,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020700004', 'M000007',5600,2);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020700005', 'M000008',3600,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020700006', 'M000009',4500,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020700007', 'M000001',6100,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020700007', 'M000002',5200,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020700007', 'M000003',5500,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020700008', 'M000004',6100,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020700009', 'M000005',4100,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020700009', 'M000006',4600,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020700010', 'M000007',5600,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020700010', 'M000008',3600,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020700011', 'M000009',4500,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020700012', 'M000008',3600,1);





/**********************< 20210209  >******************************************************************************************/
/*주문 정보 */
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021020900001', '2021-02-06 10:01:00','card','done');
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021020900002', '2021-02-06 10:02:00','card','done');
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021020900003', '2021-02-06 10:21:00','cash','ord');
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021020900004', '2021-02-06 10:10:00','card','prep');
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021020900005', '2021-02-06 10:22:00','card','ord');
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021020900006', '2021-02-06 10:03:00','card','done');
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021020900007', '2021-02-06 10:11:00','card','prep');
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021020900008', '2021-02-06 10:04:00','cash','done');
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021020900009', '2021-02-06 10:12:00','card','prep');
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021020900010', '2021-02-06 10:26:00','card','ord');
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021020900011', '2021-02-06 10:13:00','cash','prep');
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021020900012', '2021-02-06 10:24:00','card','ord');

/*주문상세  */
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020900001', 'M000001',6100,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020900001', 'M000002',5200,2);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020900002', 'M000003',5500,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020900002', 'M000004',6100,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020900003', 'M000005',4100,3);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020900004', 'M000006',4600,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020900004', 'M000007',5600,2);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020900005', 'M000008',3600,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020900006', 'M000009',4500,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020900007', 'M000001',6100,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020900007', 'M000002',5200,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020900007', 'M000003',5500,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020900008', 'M000004',6100,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020900009', 'M000005',4100,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020900009', 'M000006',4600,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020900010', 'M000007',5600,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020900010', 'M000008',3600,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020900011', 'M000009',4500,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021020900012', 'M000008',3600,1);







/**********************< 202101월  >******************************************************************************************/
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021010100001', '2021-02-06 10:01:00','card','done');
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021010200002', '2021-02-06 10:02:00','card','done');
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021010300003', '2021-02-06 10:21:00','cash','done');
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021010400004', '2021-02-06 10:10:00','card','done');
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021010500005', '2021-02-06 10:22:00','card','done');
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021010600006', '2021-02-06 10:03:00','card','done');
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021010700007', '2021-02-06 10:11:00','card','done');
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021010800008', '2021-02-06 10:04:00','cash','done');
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021010900009', '2021-02-06 10:12:00','card','done');
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021011000010', '2021-02-06 10:26:00','card','done');
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021011100011', '2021-02-06 10:13:00','cash','done');
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2021011200012', '2021-02-06 10:24:00','card','done');

/*주문상세  입력 */
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021010100001', 'M000001',6100,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021010100001', 'M000002',5200,4);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021010200002', 'M000003',5500,3);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021010200002', 'M000004',6100,4);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021010300003', 'M000005',4100,6);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021010400004', 'M000006',4600,3);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021010400004', 'M000007',5600,2);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021010500005', 'M000008',3600,4);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021010600006', 'M000009',4500,5);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021010700007', 'M000001',6100,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021010700007', 'M000002',5200,5);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021010700007', 'M000003',5500,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021010800008', 'M000004',6100,5);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021010900009', 'M000005',4100,6);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021010900009', 'M000006',4600,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021011000010', 'M000007',5600,7);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021011000010', 'M000008',3600,3);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021011100011', 'M000009',4500,10);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2021011200012', 'M000008',3600,3);



/**********************< 202012월  >******************************************************************************************/
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020120100001', '2021-02-06 10:01:00','card','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020120200002', '2021-02-06 10:02:00','card','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020120300003', '2021-02-06 10:21:00','cash','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020120400004', '2021-02-06 10:10:00','card','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020120500005', '2021-02-06 10:22:00','card','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020120600006', '2021-02-06 10:03:00','card','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020120700007', '2021-02-06 10:11:00','card','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020120800008', '2021-02-06 10:04:00','cash','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020120900009', '2021-02-06 10:12:00','card','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020121000010', '2021-02-06 10:26:00','card','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020121100011', '2021-02-06 10:13:00','cash','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020121200012', '2021-02-06 10:24:00','card','done'); 

/*주문상세  입력 */
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020120100001', 'M000001',6100,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020120100001', 'M000002',5200,2);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020120200002', 'M000003',5500,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020120200002', 'M000004',6100,3);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020120300003', 'M000005',4100,4);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020120400004', 'M000006',4600,6);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020120400004', 'M000007',5600,2);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020120500005', 'M000008',3600,7);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020120600006', 'M000009',4500,8);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020120700007', 'M000001',6100,9);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020120700007', 'M000002',5200,3);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020120700007', 'M000003',5500,4);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020120800008', 'M000004',6100,5);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020120900009', 'M000005',4100,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020120900009', 'M000006',4600,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020121000010', 'M000007',5600,3);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020121000010', 'M000008',3600,4);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020121100011', 'M000009',4500,6);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020121200012', 'M000008',3600,8 );




/**********************< 202011월  >******************************************************************************************/
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020110100001', '2021-02-06 10:01:00','card','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020110200002', '2021-02-06 10:02:00','card','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020110300003', '2021-02-06 10:21:00','cash','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020110400004', '2021-02-06 10:10:00','card','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020110500005', '2021-02-06 10:22:00','card','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020110600006', '2021-02-06 10:03:00','card','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020110700007', '2021-02-06 10:11:00','card','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020110800008', '2021-02-06 10:04:00','cash','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020110900009', '2021-02-06 10:12:00','card','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020111000010', '2021-02-06 10:26:00','card','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020111100011', '2021-02-06 10:13:00','cash','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020111200012', '2021-02-06 10:24:00','card','done'); 

/*주문상세  입력 */
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020110100001', 'M000001',6100,1 );
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020110100001', 'M000002',5200,3 );
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020110200002', 'M000003',5500,4 );
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020110200002', 'M000004',6100,5 );
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020110300003', 'M000005',4100,6 );
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020110400004', 'M000006',4600,8 );
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020110400004', 'M000007',5600,3 );
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020110500005', 'M000008',3600,5 );
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020110600006', 'M000009',4500,6 );
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020110700007', 'M000001',6100,8 );
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020110700007', 'M000002',5200,9 );
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020110700007', 'M000003',5500,0 );
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020110800008', 'M000004',6100,1 );
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020110900009', 'M000005',4100,12);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020110900009', 'M000006',4600,23);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020111000010', 'M000007',5600,12);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020111000010', 'M000008',3600,4 );
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020111100011', 'M000009',4500,1 );
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020111200012', 'M000008',3600,2 );



/**********************< 202010월  >******************************************************************************************/
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020100100001', '2021-02-06 10:01:00','card','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020100200002', '2021-02-06 10:02:00','card','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020100300003', '2021-02-06 10:21:00','cash','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020100400004', '2021-02-06 10:10:00','card','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020100500005', '2021-02-06 10:22:00','card','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020100600006', '2021-02-06 10:03:00','card','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020100700007', '2021-02-06 10:11:00','card','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020100800008', '2021-02-06 10:04:00','cash','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020100900009', '2021-02-06 10:12:00','card','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020101000010', '2021-02-06 10:26:00','card','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020101100011', '2021-02-06 10:13:00','cash','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020101200012', '2021-02-06 10:24:00','card','done'); 

/*주문상세  입력 */
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020100100001', 'M000001',6100,1 );
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020100100001', 'M000002',5200,3 );
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020100200002', 'M000003',5500,4 );
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020100200002', 'M000004',6100,5 );
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020100300003', 'M000005',4100,6 );
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020100400004', 'M000006',4600,8 );
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020100400004', 'M000007',5600,3 );
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020100500005', 'M000008',3600,5 );
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020100600006', 'M000009',4500,6 );
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020100700007', 'M000001',6100,8 );
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020100700007', 'M000002',5200,9 );
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020100700007', 'M000003',5500,0 );
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020100800008', 'M000004',6100,1 );
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020100900009', 'M000005',4100,12);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020100900009', 'M000006',4600,23);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020101000010', 'M000007',5600,12);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020101000010', 'M000008',3600,4 );
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020101100011', 'M000009',4500,1 );
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020101200012', 'M000008',3600,2 );





/**********************< 202009월  >******************************************************************************************/
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020090100001', '2021-02-06 10:01:00','card','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020090200002', '2021-02-06 10:02:00','card','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020090300003', '2021-02-06 10:21:00','cash','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020090400004', '2021-02-06 10:10:00','card','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020090500005', '2021-02-06 10:22:00','card','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020090600006', '2021-02-06 10:03:00','card','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020090700007', '2021-02-06 10:11:00','card','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020090800008', '2021-02-06 10:04:00','cash','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020090900009', '2021-02-06 10:12:00','card','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020091000010', '2021-02-06 10:26:00','card','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020091100011', '2021-02-06 10:13:00','cash','done'); 
INSERT INTO mapleApp_order(orderno,orderdate,payment,status) values ('R2020091200012', '2021-02-06 10:24:00','card','done'); 


/*주문상세  입력 */
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020090100001', 'M000001',6100,7);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020090100001', 'M000002',5200,2);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020090200002', 'M000003',5500,3);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020090200002', 'M000004',6100,4);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020090300003', 'M000005',4100,8);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020090400004', 'M000006',4600,9);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020090400004', 'M000007',5600,1);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020090500005', 'M000008',3600,5);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020090600006', 'M000009',4500,6);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020090700007', 'M000001',6100,7);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020090700007', 'M000002',5200,7);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020090700007', 'M000003',5500,7);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020090800008', 'M000004',6100,7);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020090900009', 'M000005',4100,7);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020090900009', 'M000006',4600,4);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020091000010', 'M000007',5600,6);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020091000010', 'M000008',3600,8);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020091100011', 'M000009',4500,9);
INSERT INTO mapleApp_orderdetail(orderno_id,menuid_id,price,qty) values ('R2020091200012', 'M000008',3600,10);



