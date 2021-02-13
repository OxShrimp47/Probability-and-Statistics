#Homework2 by Tommy Truong, September 17,2018
#Program Description:This will test cows using .98 percent accuracy.  So that sick cow is tested positive 98% of thetime but also healthy cows will be tested as positive 2% of the time.
herd=floor(runif(1000)>.95)

test <-function(x){
  for (i in 1:length(x)){
    if (x[i]==0) x[i]=floor(runif(1)>.98) 
    else x[i]=floor(runif(1)<.98)}
  return(x)}

herd
sum(herd)/1000
#The sum values are consistent beng approxiametly 5%
therd=test(herd)
sum(therd)/1000
#It is bigger than the actual number of sick cows because it includes false positives from healthy cows.
sum(herd,therd)/sum(therd)
# This disagrees with the theoretical probability & sample size is caped and cannot run at highervalue to increase accuracy.
  herd[therd==1]
  # this code therd==1 does not specify the positives from sick cows and false positives from healthy cows and is thus not an accurate test

  sum(herd[(therd==1)])/20
#this gives the approximate number of false positives
  (sum(herd[therd==1])-sum(herd[(therd==1)])/20)/1000
  #this the approximate number of sick cows
  
  