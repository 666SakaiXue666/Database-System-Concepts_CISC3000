insert into Structure (struc_name, address, struc_phone)
values  
('Admin', 'G001', '68572919'),
('FO', 'G002', '98765432'),
('Cater', 'G004', '87654521'),
('Purchase', 'G003', '6856929'),
('Engineer', 'G005', '23657989'),
('Sales', 'G006', '69564830'),
('Rooms', 'G007', '56789012'),
('Training', 'G008', '45678901'),
('Account', 'G009', '68333917'),
('Security', 'G010', '98566339');

insert into Job (job_id, job_name, supervisory_job_id, struc_name, salary)
values 
('A001', 'General Manager', NULL, 'Admin', 10000),
('R001','Manager', 'A001','Rooms',5000),
('R002','Housekeeper','R001','Rooms',4000),
('R003','Attendant','R002','Rooms',3000),
('R004','Clerk','R002','Rooms',3000),
('R005','Laundry_Clerk','R002','Rooms',3000),
('R006','janitorial','R002','Rooms',3000),
('C001','Manager', 'A001','Cater',6000),
('C002','HeadServer','C001','Cater',3500),
('C003','Server','C002','Cater', 3000),
('C004','Attendant','C002','Cater', 3000);


insert into Staff (ID, job_id, staff_name, phone)
values 
('H001','R001','Steve','68516566'),
('H002','R002','Simon','68518866'),
('H003','R003','Lucy','68516546'),
('H004','R004','Jack','68514866'),
('H005','R005','Jhon','68515736'),
('H006','R005','Bob','68516456'),
('H007','R006','Louis','68517966'),
('H008','R006','Steve','68516566'),
('H009','R006','Edsion','68592313'),
('H011','C001','Elf','56387416'),
('H012','C002','Jotaro','45384893'),
('H013','C002','Noriaki','32138964'),
('H014','C003','Josuke','3225689'),
('H015','C004','Josta','56327845');

insert into Room_Type (type_id, type_name, occupancy, bed_num, area, price)
values 
('T001','Economy',2,2,20,200),
('T002','Standard',2,1,20,300),
('T003','Superior',2,1,30,400),
('T004','Family',4,3,40,500),
('T005','Deluxe',2,1,40,500),
('T006','Business',2,2,50,600),
('T007','Executive',2,2,60,700),
('T008','Suite',6,3,70,800),
('T009','party',10,5,80,1000),
('T010','Floor',20,10,100,5000);

insert into Room (room_id, type_id, room_phone)
values 
('1001','T001','1001'),
('1002','T002','1002'),
('2001','T002','2001'),
('2002','T003','2002'),
('2003','T004','2003'),
('3001','T006','3001'),
('3002','T006','3002'),
('3003','T006','3003'),
('3004','T007','3004'),
('4001','T008','4001'),
('4002','T008','4002'),
('5001','T010','5001'),
('G001','T009','0111');

insert into Booking (book_id, room_id,  check_in_time, check_out_time, paid)
values 
('B001','1001','2024-04-27 15:00:00','2024-04-29 12:00:00', 1),
('B002','1001','2024-04-29 15:00:00','2024-04-30 12:00:00', 1),
('B003','1001','2024-04-30 16:00:00','2024-05-01 10:00:00', 1),
('B004','1002','2024-04-26 15:00:00','2024-04-29 12:00:00', 1),
('B005','1002','2024-05-01 17:00:00','2024-05-03 09:00:00', 0),
('B006','1002','2024-05-03 15:00:00','2024-05-06 15:00:00', 0),
('B007','2002','2024-04-27 10:00:00','2024-04-27 15:00:00', 1),
('B008','2002','2024-04-27 18:00:00','2024-04-28 13:00:00', 1),
('B009','2002','2024-04-28 13:00:00','2024-04-30 13:00:00', 1),
('B010','2002','2024-05-01 13:00:00','2024-05-05 13:00:00', 0);

insert into Customer (ID, book_id, customer_name, phone)
values 
('C001','B001','Alex','68572919'),
('C002','B001','Louis','68594562'),
('C003','B002','Sakai','65658979'),
('C004','B002','Duckking','78594231'),
('C005','B003','Andrew','45699892'),
('C006','B003','Joe','47851396'),
('C007','B004','Fox','53629845'),
('C008','B004','Lemon','76964332'),
('C009','B004','Eve','96358641'),
('C010','B004','Jay','12467856');

insert into Transactions (trans_id, book_id, struc_name, execute_ID,  trans_time, amount)
values 
('T001','B001','Rooms','H006','2024-04-27 22:00:00',20),
('T002','B001','Rooms','H002','2024-04-29 12:00:00',200),
('T003','B002','Rooms','H002','2024-04-30 12:00:00',200),
('T004','B003','Cater','H014','2024-04-30 19:00:00',60),
('T005','B003','Rooms','H003','2024-05-01 10:00:00',200),

('T006','B004','Rooms','H003','2024-04-28 23:00:00',30),
('T007','B004','Rooms','H005','2024-04-29 12:00:00',300),
('T008','B005','Cater','H014','2024-05-01 18:00:00',290),

('T010','B007','Rooms','H003','2024-04-27 15:00:00',400),
('T011','B008','Rooms','H006','2024-04-28 13:00:00',400),
('T012','B009','Rooms','H005','2024-04-30 13:00:00',400),
('T013','B010','Cater','H015','2024-05-02 12:00:00',130);


select * from Structure;
select * from Job;
select * from Staff;
select * from Room_Type;
select * from Room;
select * from Booking;
select * from Customer;
select * from Transactions;