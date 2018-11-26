library("RDieHarder")

runtest = function (rng, test){
  dht = dieharder(rng=rng, test=test, psamples=10000, seed=0, verbose=FALSE)
  v = as.double(dht["p.value"])
  v
}

tests = c(0,1,2,5,10)
results = sapply(tests, function(t) runtest(14, t))
df = data.frame(tests, results)
df
min(df[,2])
