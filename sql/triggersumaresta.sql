
drop trigger sumaD;

delimiter $$
create trigger sumaD
before insert on compradetalle
for each row  
begin
call SumaI(new.idProductos, new.Cantidad);
end $$
delimiter ;   





drop trigger restarD;

delimiter $$
create trigger restarD
before insert on ventasdetalle
for each row  
begin
call RestaI(new.idProductos, new.Cantidad);
end $$
delimiter ;
