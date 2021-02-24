SELECT * FROM game.game 
	join (select * from image where isimg = 'M' ) as img 
    on game.gameNum = img.gameNum 
    where title like '%테스트%' order by title desc limit 0, 10;