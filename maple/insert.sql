/*데이터 삭제*/
/*
DELETE FROM m_orderdetail ;
DELETE FROM m_order ;
DELETE FROM m_info ;
DELETE FROM m_menu  ;
DELETE FROM m_staff ;


*/


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
INSERT INTO m_user(user_id,user_pwd,user_mail) values ('admin'  ,'1234','admin@mapla.com'    );


/*공통정보  */
INSERT INTO m_Info(type,code,name,odno) values ('pay_choice','card','카드',0);
INSERT INTO m_Info(type,code,name,odno) values ('pay_choice','cash','현금',0);
INSERT INTO m_Info(type,code,name,odno) values ('status_choice','done','완료',3);
INSERT INTO m_Info(type,code,name,odno) values ('status_choice','prep','준비중',2);
INSERT INTO m_Info(type,code,name,odno) values ('status_choice','ord','주문',1);
INSERT INTO m_Info(type,code,name,odno) values ('job_title','J10','CEO',0);
INSERT INTO m_Info(type,code,name,odno) values ('job_title','J20','메니저',0);
INSERT INTO m_Info(type,code,name,odno) values ('job_title','J30','사원',0);
INSERT INTO m_Info(type,code,name,odno) values ('job_title','J40','부장',0);
INSERT INTO m_Info(type,code,name,odno) values ('job_title','J50','인턴',0);
INSERT INTO m_Info(type,code,name,odno) values ('job_title','J60','아르바이트',0);



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
INSERT INTO m_staff(staffid,staffname,jobtitle,startdate,phone) values ('S000001', 'Anthony','J10','2010-01-01','010-4567-1245');
INSERT INTO m_staff(staffid,staffname,jobtitle,startdate,phone) values ('S000002', 'Robert Downey Jr','J20','2012-02-01','010-4577-5674');
INSERT INTO m_staff(staffid,staffname,jobtitle,startdate,phone) values ('S000003', 'Nyeung','J30','2017-03-01','010-1244-1412');
INSERT INTO m_staff(staffid,staffname,jobtitle,startdate,phone) values ('S000004', 'Jacob','J30','2019-04-01','010-5644-7785');
INSERT INTO m_staff(staffid,staffname,jobtitle,startdate,phone) values ('S000005', 'Minjae','J40','2020-05-01','010-1244-7512');
INSERT INTO m_staff(staffid,staffname,jobtitle,startdate,phone) values ('S000006', 'Bona','J50','2021-02-01','010-6855-4566');

