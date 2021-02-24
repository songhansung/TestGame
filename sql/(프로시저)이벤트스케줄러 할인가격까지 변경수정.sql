drop procedure if exists select_discount;
delimiter //
create procedure select_discount()
begin
	declare _count int default 0;
    declare _i int default 0;
    declare _gameNum int default 0;
    declare _is varchar(10) default 0;
	DELETE FROM game.discount where discountTime <= now(); 
    set _count = (select count(*) from discount);
    
    update game set isdiscount = 'N';
    while _i < _count do
		set _gameNum = (select gameNum from discount order by gameNum desc limit _i, 1);
        update game set isdiscount = 'Y' where gameNum = _gameNum;
        update game set disprice = 0 where isdiscount = 'N';
        set _i = _i + 1;
    end while;
    
end //
delimiter ;
call select_discount();