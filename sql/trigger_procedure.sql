/* Resta */


/* Procedure */

delimiter $

create procedure RestaI ( idProducto_v int, Cantidad_v  double)

begin

update Inventario set Existencia = Existencia-Cantidad_v  where idProducto = idProducto_v;

end $
delimiter ;

/* trigger */

delimiter $$
create trigger restarD
before insert on ventasdetalle
for each row  
begin
call RestaI(new.idProductos, new.Cantidad);
end $$
delimiter ;


/* Suma */

/* Procedure */
delimiter $

create procedure SumaI ( idProducto_v int, Cantidad_v  double)

begin

update Inventario set Existencia = Existencia+Cantidad_v  where idProducto = idProducto_v;

end $
delimiter ;

/* trigger */


delimiter $$
create trigger sumaD
before insert on compraDetalle
for each row  
begin
call SumaI(new.idProductos, new.Cantidad);
end $$
delimiter ;  