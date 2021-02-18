
/*<주문정보>*********************************************************************************************************/


/*<20201201>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020120100001', '2020-12-01', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020120100002', '2020-12-01', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120100001', 'M000009',4500,1,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120100002', 'M000002',5200,4,0 );

/*<20201202>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020120200001', '2020-12-02', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020120200002', '2020-12-02', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120200001', 'M000006',4600,1,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120200001', 'M000007',5600,3,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120200002', 'M000008',3600,4,0 );

/*<20201203>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020120300001', '2020-12-03', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020120300002', '2020-12-03', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120300001', 'M000003',5500,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120300002', 'M000004',6100,4,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120300002', 'M000005',4100,5,0 );

/*<20201204>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020120400001', '2020-12-04', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020120400002', '2020-12-04', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120400001', 'M000001',6100,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120400002', 'M000002',5200,1,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120400002', 'M000003',5500,2,0 );


/*<20201205>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020120500001', '2020-12-05', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020120500002', '2020-12-05', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120500001', 'M000003',5500,9,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120500001', 'M000006',4600,9,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120500002', 'M000009',4500,4,0 );



/*<20201206>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020120600001', '2020-12-06', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020120600002', '2020-12-06', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120600001', 'M000003',5500,1,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120600001', 'M000006',4600,2,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120600002', 'M000009',4500,4,0 );

/*<20201207>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020120700001', '2020-12-07', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020120700002', '2020-12-07', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120700001', 'M000009',4500,6,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120700001', 'M000001',6100,2,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120700002', 'M000002',5200,7,0 );

/*<20201208>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020120800001', '2020-12-08', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020120800002', '2020-12-08', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120800001', 'M000006',4600,9,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120800001', 'M000007',5600,3,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120800002', 'M000008',3600,2,0 );

/*<20201209>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020120900001', '2020-12-09', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020120900002', '2020-12-09', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120900001', 'M000003',5500,8,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120900002', 'M000004',6100,1,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020120900002', 'M000005',4100,2,0 );

/*<20201210>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020121000001', '2020-12-10', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020121000002', '2020-12-10', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121000001', 'M000003',5500,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121000001', 'M000006',4600,8,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121000002', 'M000009',4500,9,0 );

/*<20201211>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020121100001', '2020-12-11', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020121100002', '2020-12-11', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121100001', 'M000009',4500,1,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121100001', 'M000001',6100,2,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121100002', 'M000002',5200,4,0 );

/*<20201212>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020121200001', '2020-12-12', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020121200002', '2020-12-12', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121200001', 'M000006',4600,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121200001', 'M000007',5600,3,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121200002', 'M000008',3600,3,0 );

/*<20201213>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020121300001', '2020-12-13', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020121300002', '2020-12-13', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121300001', 'M000003',5500,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121300002', 'M000004',6100,9,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121300002', 'M000005',4100,9,0 );

/*<20201214>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020121400001', '2020-12-14', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020121400002', '2020-12-14', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121400001', 'M000001',6100,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121400002', 'M000002',5200,8,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121400002', 'M000003',5500,9,0 );


/*<20201215>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020121500001', '2020-12-15', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020121500002', '2020-12-15', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121500001', 'M000003',5500,9,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121500001', 'M000006',4600,3,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121500002', 'M000009',4500,1,0 );

/*<20201216>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020121600001', '2020-12-16', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020121600002', '2020-12-16', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121600001', 'M000003',5500,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121600001', 'M000006',4600,5,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121600002', 'M000009',4500,7,0 );

/*<20201217>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020121700001', '2020-12-17', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020121700002', '2020-12-17', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121700001', 'M000009',4500,6,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121700001', 'M000001',6100,2,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121700002', 'M000002',5200,9,0 );

/*<20201218>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020121800001', '2020-12-18', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020121800002', '2020-12-18', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121800001', 'M000006',4600,1,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121800001', 'M000007',5600,9,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121800002', 'M000008',3600,2,0 );

/*<20201219>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020121900001', '2020-12-19', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020121900002', '2020-12-19', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121900001', 'M000003',5500,9,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121900002', 'M000004',6100,1,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020121900002', 'M000005',4100,2,0 );

/*<20201220>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020122000001', '2020-12-20', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020122000002', '2020-12-20', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020122000001', 'M000001',6100,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020122000002', 'M000002',5200,1,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020122000002', 'M000003',5500,7,0 );

/*<20201221>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020122100001', '2020-12-21', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020122100002', '2020-12-21', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020122100001', 'M000003',5500,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020122100001', 'M000006',4600,5,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020122100002', 'M000009',4500,1,0 );

/*<20201222>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020122200001', '2020-12-22', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020122200002', '2020-12-22', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020122200001', 'M000006',4600,1,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020122200001', 'M000007',5600,3,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020122200002', 'M000008',3600,6,0 );

/*<20201223>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020122300001', '2020-12-23', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020122300002', '2020-12-23', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020122300001', 'M000003',5500,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020122300002', 'M000004',6100,1,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020122300002', 'M000005',4100,8,0 );

/*<20201224>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020122400001', '2020-12-24', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020122400002', '2020-12-24', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020122400001', 'M000001',6100,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020122400002', 'M000002',5200,8,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020122400002', 'M000003',5500,7,0 );

/*<20201225>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020122500001', '2020-12-25', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020122500002', '2020-12-25', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020122500001', 'M000003',5500,2,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020122500001', 'M000006',4600,5,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020122500002', 'M000009',4500,2,0 );

/*<20201226>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020122600001', '2020-12-26', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020122600002', '2020-12-26', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020122600001', 'M000003',5500,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020122600001', 'M000006',4600,5,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020122600002', 'M000009',4500,7,0 );

/*<20201227>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020122700001', '2020-12-27', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020122700002', '2020-12-27', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020122700001', 'M000009',4500,1,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020122700001', 'M000001',6100,2,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020122700002', 'M000002',5200,3,0 );

/*<20201228>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020122800001', '2020-12-28', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020122800002', '2020-12-28', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020122800001', 'M000006',4600,1,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020122800001', 'M000007',5600,3,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020122800002', 'M000008',3600,2,0 );

/*<20201229>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020122900001', '2020-12-29', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020122900002', '2020-12-29', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020122900001', 'M000003',5500,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020122900002', 'M000004',6100,1,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020122900002', 'M000005',4100,2,0 );

/*<20201220>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020123000001', '2020-12-30', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020123000002', '2020-12-30', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020123000001', 'M000001',6100,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020123000002', 'M000002',5200,5,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020123000002', 'M000003',5500,7,0 );

/*<20201231>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020123100001', '2020-12-31', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2020123100002', '2020-12-31', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020123100001', 'M000003',5500,2,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020123100001', 'M000006',4600,3,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2020123100002', 'M000009',4500,4,0 );



/*<주문정보>*********************************************************************************************************/
/*<20210101>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021010100001', '2021-01-01', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021010100002', '2021-01-01', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010100001', 'M000009',4500,1,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010100002', 'M000002',5200,4,0 );

/*<20210102>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021010200001', '2021-01-02', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021010200002', '2021-01-02', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010200001', 'M000006',4600,1,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010200001', 'M000007',5600,3,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010200002', 'M000008',3600,4,0 );

/*<20210103>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021010300001', '2021-01-03', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021010300002', '2021-01-03', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010300001', 'M000003',5500,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010300002', 'M000004',6100,4,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010300002', 'M000005',4100,5,0 );

/*<20210104>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021010400001', '2021-01-04', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021010400002', '2021-01-04', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010400001', 'M000001',6100,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010400002', 'M000002',5200,1,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010400002', 'M000003',5500,2,0 );


/*<20210105>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021010500001', '2021-01-05', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021010500002', '2021-01-05', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010500001', 'M000003',5500,9,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010500001', 'M000006',4600,9,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010500002', 'M000009',4500,4,0 );



/*<20210106>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021010600001', '2021-01-06', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021010600002', '2021-01-06', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010600001', 'M000003',5500,1,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010600001', 'M000006',4600,2,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010600002', 'M000009',4500,4,0 );

/*<20210107>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021010700001', '2021-01-07', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021010700002', '2021-01-07', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010700001', 'M000009',4500,6,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010700001', 'M000001',6100,2,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010700002', 'M000002',5200,7,0 );

/*<20210108>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021010800001', '2021-01-08', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021010800002', '2021-01-08', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010800001', 'M000006',4600,9,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010800001', 'M000007',5600,3,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010800002', 'M000008',3600,2,0 );

/*<20210109>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021010900001', '2021-01-09', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021010900002', '2021-01-09', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010900001', 'M000003',5500,8,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010900002', 'M000004',6100,1,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021010900002', 'M000005',4100,2,0 );

/*<20210110>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021011000001', '2021-01-10', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021011000002', '2021-01-10', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011000001', 'M000003',5500,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011000001', 'M000006',4600,8,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011000002', 'M000009',4500,9,0 );

/*<20210111>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021011100001', '2021-01-11', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021011100002', '2021-01-11', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011100001', 'M000009',4500,1,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011100001', 'M000001',6100,2,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011100002', 'M000002',5200,4,0 );

/*<20210112>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021011200001', '2021-01-12', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021011200002', '2021-01-12', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011200001', 'M000006',4600,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011200001', 'M000007',5600,3,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011200002', 'M000008',3600,3,0 );

/*<20210113>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021011300001', '2021-01-13', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021011300002', '2021-01-13', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011300001', 'M000003',5500,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011300002', 'M000004',6100,9,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011300002', 'M000005',4100,9,0 );

/*<20210114>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021011400001', '2021-01-14', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021011400002', '2021-01-14', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011400001', 'M000001',6100,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011400002', 'M000002',5200,8,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011400002', 'M000003',5500,9,0 );


/*<20210115>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021011500001', '2021-01-15', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021011500002', '2021-01-15', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011500001', 'M000003',5500,9,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011500001', 'M000006',4600,3,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011500002', 'M000009',4500,1,0 );

/*<20210116>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021011600001', '2021-01-16', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021011600002', '2021-01-16', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011600001', 'M000003',5500,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011600001', 'M000006',4600,5,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011600002', 'M000009',4500,7,0 );

/*<20210117>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021011700001', '2021-01-17', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021011700002', '2021-01-17', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011700001', 'M000009',4500,6,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011700001', 'M000001',6100,2,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011700002', 'M000002',5200,9,0 );

/*<20210118>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021011800001', '2021-01-18', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021011800002', '2021-01-18', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011800001', 'M000006',4600,1,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011800001', 'M000007',5600,9,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011800002', 'M000008',3600,2,0 );

/*<20210119>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021011900001', '2021-01-19', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021011900002', '2021-01-19', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011900001', 'M000003',5500,9,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011900002', 'M000004',6100,1,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021011900002', 'M000005',4100,2,0 );

/*<20210120>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021012000001', '2021-01-20', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021012000002', '2021-01-20', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021012000001', 'M000001',6100,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021012000002', 'M000002',5200,1,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021012000002', 'M000003',5500,7,0 );

/*<20210121>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021012100001', '2021-01-21', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021012100002', '2021-01-21', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021012100001', 'M000003',5500,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021012100001', 'M000006',4600,5,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021012100002', 'M000009',4500,1,0 );

/*<20210122>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021012200001', '2021-01-22', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021012200002', '2021-01-22', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021012200001', 'M000006',4600,1,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021012200001', 'M000007',5600,3,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021012200002', 'M000008',3600,6,0 );

/*<20210123>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021012300001', '2021-01-23', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021012300002', '2021-01-23', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021012300001', 'M000003',5500,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021012300002', 'M000004',6100,1,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021012300002', 'M000005',4100,8,0 );

/*<20210124>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021012400001', '2021-01-24', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021012400002', '2021-01-24', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021012400001', 'M000001',6100,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021012400002', 'M000002',5200,8,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021012400002', 'M000003',5500,7,0 );

/*<20210125>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021012500001', '2021-01-25', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021012500002', '2021-01-25', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021012500001', 'M000003',5500,2,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021012500001', 'M000006',4600,5,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021012500002', 'M000009',4500,2,0 );

/*<20210126>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021012600001', '2021-01-26', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021012600002', '2021-01-26', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021012600001', 'M000003',5500,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021012600001', 'M000006',4600,5,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021012600002', 'M000009',4500,7,0 );

/*<20210127>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021012700001', '2021-01-27', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021012700002', '2021-01-27', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021012700001', 'M000009',4500,1,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021012700001', 'M000001',6100,2,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021012700002', 'M000002',5200,3,0 );

/*<20210128>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021012800001', '2021-01-28', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021012800002', '2021-01-28', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021012800001', 'M000006',4600,1,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021012800001', 'M000007',5600,3,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021012800002', 'M000008',3600,2,0 );

/*<20210129>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021012900001', '2021-01-29', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021012900002', '2021-01-29', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021012900001', 'M000003',5500,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021012900002', 'M000004',6100,1,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021012900002', 'M000005',4100,2,0 );

/*<20210120>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021013000001', '2021-01-30', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021013000002', '2021-01-30', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021013000001', 'M000001',6100,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021013000002', 'M000002',5200,5,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021013000002', 'M000003',5500,7,0 );

/*<20210131>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021013100001', '2021-01-31', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021013100002', '2021-01-31', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021013100001', 'M000003',5500,2,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021013100001', 'M000006',4600,3,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021013100002', 'M000009',4500,4,0 );




/*<주문정보>*********************************************************************************************************/


/*<20210201>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020100001', '2021-02-01', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020100002', '2021-02-01', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020100001', 'M000009',4500,1,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020100002', 'M000002',5200,4,0 );

/*<20210202>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020200001', '2021-02-02', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020200002', '2021-02-02', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020200001', 'M000006',4600,1,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020200001', 'M000007',5600,3,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020200002', 'M000008',3600,4,0 );

/*<20210203>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020300001', '2021-02-03', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020300002', '2021-02-03', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020300001', 'M000003',5500,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020300002', 'M000004',6100,4,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020300002', 'M000005',4100,5,0 );

/*<20210204>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020400001', '2021-02-04', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020400002', '2021-02-04', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020400001', 'M000001',6100,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020400002', 'M000002',5200,1,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020400002', 'M000003',5500,2,0 );


/*<20210205>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020500001', '2021-02-05', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020500002', '2021-02-05', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020500001', 'M000003',5500,9,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020500001', 'M000006',4600,9,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020500002', 'M000009',4500,4,0 );



/*<20210206>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020600001', '2021-02-06', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020600002', '2021-02-06', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020600001', 'M000003',5500,1,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020600001', 'M000006',4600,2,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020600002', 'M000009',4500,4,0 );

/*<20210207>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020700001', '2021-02-07', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020700002', '2021-02-07', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020700001', 'M000009',4500,6,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020700001', 'M000001',6100,2,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020700002', 'M000002',5200,7,0 );

/*<20210208>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020800001', '2021-02-08', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020800002', '2021-02-08', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020800001', 'M000006',4600,9,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020800001', 'M000007',5600,3,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020800002', 'M000008',3600,2,0 );

/*<20210209>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020900001', '2021-02-09', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021020900002', '2021-02-09', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020900001', 'M000003',5500,8,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020900002', 'M000004',6100,1,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021020900002', 'M000005',4100,2,0 );

/*<20210210>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021021000001', '2021-02-10', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021021000002', '2021-02-10', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021021000001', 'M000003',5500,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021021000001', 'M000006',4600,8,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021021000002', 'M000009',4500,9,0 );

/*<20210211>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021021100001', '2021-02-11', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021021100002', '2021-02-11', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021021100001', 'M000009',4500,1,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021021100001', 'M000001',6100,2,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021021100002', 'M000002',5200,4,0 );

/*<20210212>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021021200001', '2021-02-12', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021021200002', '2021-02-12', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021021200001', 'M000006',4600,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021021200001', 'M000007',5600,3,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021021200002', 'M000008',3600,3,0 );

/*<20210213>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021021300001', '2021-02-13', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021021300002', '2021-02-13', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021021300001', 'M000003',5500,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021021300002', 'M000004',6100,9,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021021300002', 'M000005',4100,9,0 );

/*<20210214>---------------------------------------------------------------------------------------------------------*/
/*주문 정보*/
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021021400001', '2021-02-14', '10:01:00','card','done');
INSERT INTO m_order(orderno,orderdate,ordertime,payment,status) values ('R2021021400002', '2021-02-14', '10:02:00','cash','done');

/*주문상세  */
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021021400001', 'M000001',6100,4,0 );
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021021400002', 'M000002',5200,8,0);
INSERT INTO m_orderdetail(orderno_id,menuid_id,price,qty,sales) values ('R2021021400002', 'M000003',5500,9,0 );




UPDATE m_orderdetail SET  sales = price *  qty  ; 