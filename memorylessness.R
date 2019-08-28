#' NOTE: This code is originally part of an ongoing data ethic's project about using algorithms with loot
#' boxes and how that contributed to Activision Blizzard and EA's recent stock market crash.  I need to 
#' figure out a methodology of testing memorylessness and later heteroscasity.  In other words,
#' I need an advanced form of explainability/interpretability that is not always looked at as
#' traditionally explainability.  This form of explinability is sometimes called "bias reduction"
#' So my project is a true Data Science Ethics project but using the format of Data Ethics
#' as a starting point. And unlike the traditional AI or explinability discussion about morality 
#' this one is more practical in terms of financial cost. 

   
#' So with this script I would like  to I  figure out how do determine if a system is not memoryless. Or
#' if I am really lucky propose an alternative model to tie data ethics.  Public data retrieved using
#' ethical means (and not webscrapping or data mining) about games is very rare.  So I would like
#' to star with a dataset from Candy Crush.

#' Below is short aside to prove that there could be a problem with video games being assumed to be
#' memoryless...

#'  Let's talk about a story about loot boxes, but instead of the beginning lets start with the end.
#'  Back in 2018, the stock market of EA and Activision crashed.  This was due to how players were disatisfied:
#'  https://www.cnbc.com/2019/02/07/activision-blizzard-has-lost-half-its-value-but-traders-positive-before-earnings.html
#'  https://www.forbes.com/sites/insertcoin/2019/01/04/in-2019-the-state-of-activision-blizzard-is-not-strong/#447044c73039


#' Side note to any gamers, I am generally not going to talk about moral ethics of loot boxes.
#' I want to know more about question like.... 
#' What system or method caused this frustration by consumers to Activision Blizzard and EA?
#' (Hint: Its an true low-level artifical intellegence if you have not guessed)
#' What Microtransactions automation is used to promote or encourage them?  What automated system
#' excacerbated the issue so that something that has only cost the gaming corporation about a 
#' thousand to 10 dollars is revnue loss lead to an over 20 billion loss in company revenue in
#' 1 day?
#' In other words, I am lookingat data science ethics again from a finacial standpoint. The question of morality is a corporate
#' ethics of the problem of microtransations. A good reason for this choice in my story is due to the
#' audicience.  Sadly CIO AAA gaming companies have convienced largely
#' other parts of the gaming reviewers and game designers that lootboxes are not gambling or a moral
#' problem  The problem with Corporate Ethics and Engineering ethics, is that ethical problems don't 
#' occur in isolation (as my engineering ethics professor Dr. Gelvin might say).
#' If there is a long term corporate ethics problem (like with loot boxes),
#' it will eventually lead to a more apparent ethics problem of a different flavor.


#' So to start of what is data ethics?  Well here is a snippet of the part of data ethics we are concern
#' about the large project post (in case you skipped that section of my 30 page report):
#' #' http://theconversation.com/what-are-tech-companies-doing-about-ethical-use-of-data-not-much-104845

#' 1) Transparency:  Customers and Stackholder should have a transparent view. Are you transparent
#' with what data you are using your costumers?  Are you transparent about both the model and data
#' with your boss? it is here that a more nuanced understanding of data ownership begins to emerge.
#' "Transparency essentially refers to being open about the way data is collected and [the model]
#' used, as well as eschewing unnecessary data collection. Given the commercial imperative of
#' companies to protect confidential research and development, it’s not surprising this principle is
#' only acknowledged by a handful of players." This is the most subtle of the 5.

#' 5) Governance 2 (Explainable/Interpretable): The 2n principle is the ethical application of
#' algorithms from a data modeling stand point.  Big Data should not interfere with human will, and
#' to do that you should Big Data Model should be understandable. Big data analytics and Artifical
#' Intellegence can moderate and even determine who we are before we make up our own minds.
#' Companies need to begin to think about the kind of predictions and inferences that should be
#' allowed and the ones that should not. To do that objectively, companies need to be able to
#' understand what could go wrong or what anonalies there are. So testing for memorylessness

#' How companies pick and design microtransactions is based a couple of things but its mainly:
#' 1) Churn of the playerbase and historical data of the player in the game
#' 2) Design of the levels and level difficulty.  A completely hard level will turn of players to 
#' the game and cause a loss of constumers.  However, a completely easy level will mean that
#' Worse if its too easy player might get bored quickly
#' 2a) Interaction time and Playtime durration which is governed by level design.  This is
#' related to "Whaling" game development world
#' 3) Something I am forgetting
#'

#' Currently to do 1 and 2, the most popular algorithms are to using Monte Carlo Tree Search and
#' Deep learning based on a marchov template in some way.  What people don't tell you is that marchov
#' chains have an issue dealing with memorylessness.

#' #' You all can skip this for now only read if you want the details.  I was very glad, I was able
#' to get so much help from former Activision developers and other game developers in confirming
#' this part of the article.

#' Candy Crush's algorithm relies on Monte Carlo Tree Search.  They public disclosed this around 
#' 2015 and 2016.
#' (Video about it that occured in 2016: https://www.gdcvault.com/play/1023858/How-King-Uses-AI-in)
#' (Citation on page 13: https://www.slideshare.net/comaqa/alexander-andelkovic-comaqa-spring-2018-using-artificial-intelligence-to-test-the-candy-crush-saga-game)
#' (Follow up video: https://www.youtube.com/watch?v=-RxwvZaK3yU)
#' Kings patient: https://patents.google.com/patent/US9278282B2/en
#' Citation: http://www.diva-portal.org/smash/record.jsf?pid=diva2%3A1154062&dswid=-2754

#' King and other mobile game companies use algorithms like Deep Learning and MCTS it to 
#' dynamically scale the difficulty, which is called a dynamic game difficulty balancing model.
#' The reason why mobile games use MCTS and dynamic difficulty is drive player churn with lootboxes and 
#' microtransactions.  This is actually a classic part of game development of using changes in difficulty to encourage
#' players to use items to make it easier.  This is also sometimes called a paywall or pay to win when
#' it is done to the extreme that it affects the fun in a game.
#' [Missing citation] (This is a citation to a person thesis about destiny 2 intership project
#' where he used Machov Chain model to predict player churn with incressible accuracy)
#' (Secondary Citation: https://www.slideshare.net/AndreyDotsenko/game-monetization-overview-of-monetization-methods-for-freetoplay-games)
#' https://en.wikipedia.org/wiki/Dynamic_game_difficulty_balancing
#' https://www.pymnts.com/news/merchant-innovation/2017/activision-machine-learning-algorithm-makes-videogamers-spend-more/
#' https://www.forbes.com/sites/insertcoin/2018/06/20/from-loot-boxes-to-season-passes-activision-blizzards-monetization-feels-archaic-in-2018/#72c4847b3258
#' https://www.researchgate.net/profile/Jaideep_Srivastava2/publication/268360151_Analyzing_Human_Behavior_from_Multiplayer_Online_Game_Logs_-A_Knowledge_Discovery_Approach/links/575c2e6b08aec91374abc2a6.pdf
#' Destiny 2 specific citation: https://ieeexplore.ieee.org/abstract/document/7860431

#' Monte Carlo Tree Search relies on using multi-armed bandits to explore different possibilities
#' and plan ahead to be able to reach the best outcome.  Monte Carlo tree search (MCTS) is a
#' Tree-based search algorithm for some kinds of decision processes, most notably those employed in
#' game play. MCTS was introduced in 2006 for computer Go. Eventually Google Deepmind developed the
#' program AlphaGo, which in October 2015 became the first Computer Go program to beat a
#' professional human Go player without handicaps.  
#' Citations:
#' #' https://www.quora.com/What-is-the-difference-between-multi-arm-bandit-and-Markov-decision-process-Can-you-explain-it-to-me-in-detail-please
#' https://pdfs.semanticscholar.org/574e/6872df3fe9b89afa98a7bdeef710a931da34.pdf

#' In fact, a King employee once said that, "We assumed the game has the Markov property, 'That is,
#' given the present [game board], the future does not depend on the past', (Markov process, n.d.).
#' Indeed, all the information needed to make a move is contained in a game state. While a sequence
#' model such as LSTM could increase the performance of the classification algorithm, most of it is
#' already captured by a feedforward deep neural network." However, this also the assumption that
#' games are memoryless neralized assumption by the gaming industry as a whole.  Its is clear from
#' the article; however, that they are also assuming that the game is played in short intervals of
#' 5-15 minutes. Mobile games are infacted designed to be played in short episodes. Beyond this
#' assumption, I feel there is concern about assuming any game is memoryless, as I will get to.


# The code -----
#' It turns out that I am not the first person to question the issues of memoryless with games.
#' No that award goes to Mr. Horac H. (see the links above) who noted, "the bias in memoryless
#' can cause the uncertainty in the prediction"

#' Lets test the model with something that should be memoryless, the Candy Crush mobile data.


library(tidyverse)
library(MASS)
# require(dplyr)
library(ggplot2)
library(fitdistrplus)
data<-read_csv("Level-Difficulty-in-Candy-Crush-Saga-master/candy_crush.csv")
#' The data can be found here: https://www.datacamp.com/projects/139

#' https://github.com/vdbcyril/candy-crush-difficulty-r
#' https://github.com/ryanschaub/Level-Difficulty-in-Candy-Crush-Saga

#...

# Attempt 6: Define P_win the way they do in the vigenette examples ----

#' This data came from this example here: 
#' https://www.kaggle.com/eginner/level-difficulty-in-candy-crush-saga-by-datacamp


#' So the idea is that if we follow there logic we should get a similar answer.

data_sum <- data %>%
  group_by(level) %>%
  summarise(attempts = sum(num_attempts), 
            wins = sum(num_success)) %>%
  mutate(p_win = wins/attempts)

#' So it does not look like its expontential.
hist(data_sum$p_win)
Z <- data_sum$p_win
#' Continous case
descdist(data = Z, discrete=FALSE,1000)
#' Descrete case
descdist(data = Z, discrete=TRUE,1000)

#' So its not a memoryless? lets plot it an just confirm.
params <- as.list(fitdistr(Z, "exponential")$estimate)
quantiles <- quantile(Z,c(.25,.75))
a = diff(quantiles)/(.75-.25) 
b = -(-a*.25+quantiles[1])
qplot(sample = Z, geom = 'blank') +
  stat_qq(distribution = qexp, dparams = params) +
  geom_abline(slope=a,intercept = b)
model <- fitdist(Z,"exp")
plot(model)
summary(model)
#' Hmm...
model2 <- fitdist(Z,"weibull")
plot(model2)
summary(model2)
model3 <- fitdist(Z,"beta")
plot(model3)
summary(model3)
model4 <- fitdist(Z,"gamma")
plot(model4)
summary(model4)
#' So beta-binomial has the best AIC. But a beta distribution is not an expotential distribution.
#' But this would mean that the data is indeed not memoryless.  This would mean if this is actual 
#' mobile data that the mobile assumption is wrong as well.


# How does memorylessness or heteroskecasity become a data ethics problem? ----
  
  #' So I was kind of hoping that my tests on public anomomized data from King would show some kind of
  #' memorylessness. Or at least that I could show it memoryless for a small interval.
  #' I am kind hoping I did it wrong, as the conclusions are worse then
  #' I expected. Even the smallest distribution outlier being in level 2, causes the entire system to
  #' not be memoryless

#' For the reset of my project I will talk about the ethical ramifications of how a simple violation
#' assumption leads to catostraphic consequences due a person of game development called, 
#' the "crunch"
  

