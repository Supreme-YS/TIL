robo 3T 명령어

데몬 연결 : mongod --dbpath c:\mongo\data\db



-show dbs
-user db_name

- show collections
- db.collections_name


db.user.find() - select * from user
db.user.find({}, { user_id : 1, _id : 0 })- select user_id from user  # 1은 visible, 2는 invisible
db.user.find({gender : 'f'}, {} ) - select * from user where XXXXXX

db.user.find({user_id : 'supreme-ys', gender : 'm'}, { }) - select * from user where user_id = xxx and gender = xxx

db.user.find( { $or :  [ {user_id : 'supreme-ys'} , {gender : 'm'} ] } , { }) - select * from user where user_id = xxx or gender = xxx

db.user.find( {condition} , {column list} ) 


수정) 
update XXX
set coulum = value
where condition ;

db.collection_name.updateOne()
db.collection_name.updateMany()

db.user.updateOne({ user_id : 'supreme-ys'}, {$set : {gender: 'f'} })

->
update user
set gender = 'f'
where user_id = 'supreme-ys';



삭제)

delete from table
where condition ;

db.user.removeOne({where})
db.user.removeMany({where})

입력)
insert into table values(value, value)

db.collection_name.insertOne({key : value})
db.collection_name.insertMany({key : value})