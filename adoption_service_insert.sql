insert into animal (name, type, indate, HasBeenNeutered, age, hasbeenadopted, sex) values ('Charlie', 'Dog', '2017-01-01', true, 3, true, 'Male'), ('Simba', 'Cat', '2017-03-03', false, 5, false, 'Male'), ('Tweety', 'Bird', '2017-04-04', false, 6, false, 'Female'), ('Hector', 'Reptile', '2017-06-06', false, 3, false, 'Male');
insert into owner (First_Name, Last_Name) values ('John', 'Smith'), ('Jane', 'Doe'), ('Anthony', 'Woodcroft');
insert into animal_owner (animalID, ownerID) values (1, 3);

select * from animal where hasbeenneutered = false;
select * from animal where hasbeenadopted = false order by indate ;
select * from animal where type = 'Cat' and hasbeenadopted = false;
update animal set hasbeenadopted = true where animalID = 3;
insert into animal (name, type, indate, HasBeenNeutered, age, hasbeenadopted, sex) values ('Max', 'Dog', curdate(), true, 2, false, 'Male');
update owner set address = 'Manchester' where ownerID = 3;
insert into animal_owner (animalID, ownerID) values (3, 2);
select o.*, a.* from owner o join animal_owner ao on o.ownerID = ao.ownerID join animal a on a.animalID = ao.animalID;