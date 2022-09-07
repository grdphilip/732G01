#genererar ett random nummer mellan 1-21 
x1 <- sample(1:21, 1)

#Vi fick 21 vilket ger västra götaland
#Data hämtad från SCB
befolkning <- 1735879
arbetsloshet <- 149285.594
arbetsloshetprocent <- arbetsloshet/befolkning

binom=0
for (i in 0: 2) {
  binom = binom + dbinom(i ,size = 17, arbetsloshetprocent)
}

prob <- 1 - binom 
prob

#Välj ett parti slumpmässigt
parti <- sample(1:8,1)
#Gav liberalerna - MARS
SifoLib <- 0.024
NovusLib <- 0.021
NovusResp <- 4000 #Respondenter novus
SifoResp <- 6444 #Respondenter sifo

#Räkna ut 95% konf intervall
NovusLower <- NovusLib - 1.96*(sqrt(NovusLib*(1-NovusLib))/sqrt(4000))
NovusHigher <- NovusLib + 1.96*(sqrt(NovusLib*(1-NovusLib))/sqrt(4000))

SifoLower <- SifoLib - 1.96*(sqrt(SifoLib*(1-SifoLib))/sqrt(4000))
SifoHigher <- SifoLib + 1.96*(sqrt(SifoLib*(1-SifoLib))/sqrt(4000))


