## How to generate 100 random numbers from uniform distribution?
runif(100, min=-1, max=1)

## Arguments min=0 and max=1 are set by default. It means that if we do not
## explicitly state min and max, the funcntion will generate n random numbers
## from (0,1) interval (standart uniform distribution):
runif(100) ## = ruinf(100, min=0, max=1)=runif(100, 0, 1)


## if we want to replicate the results of a RNG session, we need to use 
## the same seed:
.Random.seed  ## gives the state of the RNG
a=.Random.seed ## saves RNG state in a vector 
set.seed(a)    ## sets "a" to be our seed  
runif(5) ## now we are generating 5 RN from unifrom distribution using the chosen seed       (1)
runif(5) ## next 5 numbers are generated from the "point", where the algorithm has "stopped" (2)
set.seed(a)
runif(5)   ## allows us to replicate the results of the previous generating
set.seed(a)
runif(10)  ## we can spot, that these 10 numbers are numbers from (1) and (2) 


## We can generate RN from different disctributions
rnorm(100) ## 100 RN from normal distribution

## Let's plot these 100 numbers from uniform and normal dostributions
plot(rnorm(1000), type="p", pch=20) ## we can see that observations are concentrated around 0
plot(runif(1000), type="p", pch=20) ## we can see that points are more or less uniformly
## distributed along the interval


## Inverse CDF method for RNG from normal distribution
c = runif(100, min = 0, max = 1) ## generating 100 quantiles
qnorm(c) ## getting random numbers from normal distribution with quntile function 

##Switching RNG
RNGkind() ## query of currently used RNG. Mersenne Twister is set by default
RNGkind("Wichmann-Hill") ## sets a new algorithm
