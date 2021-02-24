select * from buy
	  	join game on buy.gameNum = game.gameNum
	  	join (select * from image where isimg = 'M') as img on game.gameNum = img.gameNum
        join user on buy.id = user.id
	  	where isbuy = 'Y';