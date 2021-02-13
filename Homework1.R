# Homework1 by Tommy Truong, Sept.10 2018
# Program Description: Simulate 2 coin toss and calculates emperical probability of getting double heads.
# Function toss1() simulates coin toss 
toss <- function(x) floor(2*runif(x))
# Let c1 tosses from coin 1 and c2 represent tosses of coin 2. We'll store 1000 coin tosses in c1 and c2
c1=toss(100000)
c2=toss(100000)
c3=toss(100000)
dheads=sum((c1 +c2+c3)==3)
# Double heads dheads will occurs when corresponding sum of outcomes is 2 
# == operator is TRUE only when the sum of corresponding tosses is 2 (two heads came up)
# sum ((c1+c2)==2) then adds up all TRUE events and store the count in dheads.
# Print the output. Final results with comments should be the only thing printed out.
cat("Emperical probability of getting double heads is ", dheads/100000, '\n')



