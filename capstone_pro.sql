create database capstone_pro1;
use capstone_pro1;
 
create table IOB_credit_cards(CUST_ID int,CUST_NAME varchar(15),AGE int,GENDER varchar(10),phone_number varchar(20), issue_r varchar(20), card_type varchar(15),pur_catagory varchar(20),cust_sat int,pro_quality int,service_quality int,cust_complaints varchar(100),purchase_aganin varchar(20),recommend_others varchar(20));
insert into IOB_credit_cards values(1001,"abi",25,"male",7894563210,"IOB","travel","flight tickets",5,5,4,"LESS DISCOUNT",4,"NO"),
                               (1002,"bala",20,"male",7894563270,"IOB","platinum","shopping",6,6,4,"no cashbacks",5,"NO"),
                               (1003,"devi",24,"female",7898823270,"IOB","platinum","dinning",5,4,4,"high interest",4,"NO"),
							   (1004,"iniya",25,"female",7897723270,"IOB","gold","shopping",4,4,4,"lesser merchant tieups",4,"NO"),
					           (1005,"Kavya",22,"female",9898823270,"IOB","premium","home appliances",6,6,5,"high interest",5,"no"),
                               (1006,"madhu",28,"male",9898783270,"IOB","gold","machiney",5,6,4,"less merchant-tieups",6,"no"),
                               (1007,"naveen",28,"male",7798823270,"IOB","travel","flight tickets",4,5,4,"lesser merchant tieups",5,"no"),
							   (1008,"santhosh",22,"male",9898823288,"IOB","premium","smartphone",8,8,8,"nil",7,"yes"),
							   (1009,"sivan",28,"male",6388823288,"IOB","gold","shopping",7,8,8,"nil",8,"yes"),
							   (1010,"sowmiya",22,"female",9898844288,"IOB","premium","smartphone",8,8,8,"nil",7,"yes");
SELECT * FROM IOB_credit_cards;
 
CREATE table HDFC_crd_cards(cust_id int,cust_sat varchar(20),service_quality varchar(20),pro_quality int,pur_again int,recommend_others varchar(20));
insert into HDFC_crd_cards values(1001,8,8,7,8,"yes"),
                                 (1002,8,9,7,8,"yes"),
                                 (1003,8,7,7,9,"yes"),
                                 (1004,7,7,8,9,"yes"),
                                 (1005,7,8,7,9,"yes"),
                                 (1006,9,7,6,9,"yes"),
                                 (1007,6,7,6,7,"no"),
                                 (1008,9,7,8,9,"yes"),
								 (1009,8,7,8,9,"yes"),
                                 (1010,6,5,7,4,"no");
select*from HDFC_crd_cards;  
CREATE table icici_crd_cards(cust_id int, cust_sat varchar(20),service_quality varchar(20),pro_quality int,pur_again int,recommend_others varchar(20));
insert into icici_crd_cards values(1001,7,9,10,5,"no"),
                                 (1002,9,9,7,6,"yes"),
                                 (1003,7,7,7,8,"yes"),
                                 (1004,7,8,9,"yes"),
                                 (1005,7,9,7,9,"yes"),
                                 (1006,9,7,8,4,"no"),
                                 (1007,6,7,6,8,"yes"),
                                 (1008,9,6,8,9,"yes"),
                                 (1009,9,7,6,9,"yes"),
                                 (1010,6,4,7,6,"yes");
select *from icici_crd_cards;                                                 
# lesser customer satisfaction
 select avg (cust_sat) from IOB_credit_cards;
 select avg(cust_sat) from HDFC_crd_cards;
 select avg(cust_sat) from icici_crd_cards;
 # lesser merchant tieups
 SELECT CUST_NAME, pur_catagory,cust_sat, recommend_others FROM IOB_credit_cards WHERE cust_complaints LIKE '%lesser merchant tieups%';
 # To find the card types that have tie-ups with the most merchants:
 SELECT card_type, COUNT(pur_catagory) AS merchant_tieups FROM IOB_credit_cards GROUP BY card_type ORDER BY merchant_tieups DESC;
 #To find the customers who gave a rating less than 5 for customer satisfaction:
 SELECT card_type,service_quality, cust_sat FROM IOB_credit_cards WHERE cust_sat <6;
#Poor service quality:
SELECT CUST_NAME,card_type,pur_catagory, cust_complaints, service_quality FROM IOB_credit_cards WHERE service_quality < 6;
#comparing other banks
SELECT 'IOB' as bank_name, AVG(cust_sat) as avg_cust_sat FROM IOB_credit_cards UNION SELECT 'HDFC' as bank_name, AVG(cust_sat) as avg_cust_sat FROM HDFC_crd_cards UNION SELECT 'ICICI' as bank_name, AVG(cust_sat) as avg_cust_sat FROM icici_crd_cards;


 








                               
		


                               
