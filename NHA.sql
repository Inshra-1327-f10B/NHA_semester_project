 
create database NHA;

grant all on NHA.* to ansh@localhost identified by 'anshkhan';

use NHA;

create table Budget
(
B_Code varchar(5) not null primary ke ,
B_Title varchar(20),
B_Team varchar(10),
B_duration varchar(15));




create table Employee
(
E_ID varchar(5) not null primary key,
E_Name varchar(15) ,
E_Designation varchar(18),
E_Email varchar(18) unique,
E_contact varchar(13));



create table Projects
(
P_ID varchar(5) not null primary key,
P_Name varchar(25),
P_Duration varchar(10),
P_Team varchar(9) unique,
B_Code varchar(5) not null,
foreign key (B_Code) references Budget(B_Code));


create table Sections
 (S_ID int not null primary key,
  S_Name varchar(20),
  B_Code varchar(5),
  foreign key (B_Code) references Budget(B_Code));
  
  
create table Meetings
( M_ID varchar(5) not null primary key,
M_Time varchar(13),
M_Date varchar(10),
M_Agenda varchar(20),
M_Member int not null);


create table Prob_Sol
(Pr_ID varchar(6) not null primary key,
P_team varchar(20) unique,
P_type varchar(6),
P_Location varchar(10) not null,
P_Solution varchar(20));
