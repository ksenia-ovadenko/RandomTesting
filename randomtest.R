library("RDieHarder")

runtest = function (rng, test){
  dht = dieharder(rng=rng, test=test, psamples=10000, seed=0, verbose=FALSE)  ## repeat the test 10000 times, take a random seed
  v = as.double(dht["p.value"])    ## see resulting p-value
  v
}

tests = c(0,1,2,5,10)    ## put the id numbers of tests we want to apply to the vector 
results = sapply(tests, function(t) runtest(14, t)) ## repeating the function for PRNG #14 (Mersenne Twister) and chosen tests
df = data.frame(tests, results) ## saving results to a data frame
df
min(df[,2])  ## print the minimum p-value
