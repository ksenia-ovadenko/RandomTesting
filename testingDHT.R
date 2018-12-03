library("RDieHarder") ## extended library: comprises DieHard and some additional tests

dieharderGenerators() ##gives the list of RNG-s
dieharderTest() ## gives the list of avaiable tests
dht = dieharder(rng="Mersenne-Twister", test="diehard_birthdays", 
                psamples=1000, seed=10, verbose=FALSE) ## we are choosing a RNG; a test; 
                                                      ##how many times we want to replicate it and 
                                                      ##if we need detalied summary
plot(dht) ## plotting the results
