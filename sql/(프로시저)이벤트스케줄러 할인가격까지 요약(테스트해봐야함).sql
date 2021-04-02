drop procedure if exists select_discount;
delimiter //
create procedure select_discount()
begin
	declare _count int default 0;
    declare _i int default 0;
    declare _gameNum int default 0;
    declare _disprice int default 0;
    -- 할인시간(discountTime) 보다 현재시간이(now()) 크거나같으면 할인정보삭제(discount)
	DELETE FROM game.discount where discountTime <= now();
    -- 할인정보 전체를 를 갯수로(count) 찾아줌 
    set _count = (select count(*) from discount);

    -- 게임에 할인정보(isdiscount) 를 N 으로바꿔줌
    update game set isdiscount = 'N';
    -- _i(0) 보다 _count(할인정보)가 더크면
    
    -- 가격을 초기화를 먼저해줌 
    update game set disprice = 0;
    
    while _i < _count do
    -- _gameNum 에 
		set _gameNum = (select gameNum from discount order by gameNum desc limit _i, 1);
    -- 게임에 isdiscount(할인정보) 를 Y 로 업데이트 gameNum(게임번호는) 같다 _gameNum(변수)    
        update game set isdiscount = 'Y' where gameNum = _gameNum;
        -- _disprice 에 게임 가격(price) 와 할인률(discount)를 계산함 
        set _disprice = (select price from game where gameNum = _gameNum)*(1-(select discount from discount where gameNum = _gameNum)/100);
        -- 게임 에 할인가격 = _disprice 임
		update game set disprice = _disprice where gameNum = _gameNum;
        set _i = _i + 1;			
    end while;
end //
delimiter ;
call select_discount();