drop procedure if exists select_discount;
delimiter //
create procedure select_discount()
begin
	declare _count int default 0;
    declare _i int default 0;
    declare _gameNum int default 0;
    declare _disprice int default 0;
    
	DELETE FROM game.discount where discountTime <= now();
    
    set _count = (select count(*) from discount);

    
    update game set isdiscount = 'N';
    while _i < _count do
		set _gameNum = (select gameNum from discount order by gameNum desc limit _i, 1);
        update game set isdiscount = 'Y' where gameNum = _gameNum;
        set _i = _i + 1;			
    end while;
    -- 가격을 초기화를 먼저해줌 
    set _i = 0;
    update game set disprice = 0;
    while _i < _count do
		set _gameNum = (select gameNum from discount order by gameNum desc limit _i, 1);
        -- _disprice 에 게임 가격(price) 와 할인률(discount)를 계산함 
        set _disprice = (select price from game where gameNum = _gameNum)*(1-(select discount from discount where gameNum = _gameNum)/100);
        -- 게임 에 할인가격 = _disprice 임
		update game set disprice = _disprice where gameNum = _gameNum;
        set _i = _i + 1;
	end while;
end //
delimiter ;
call select_discount();