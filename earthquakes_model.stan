data {
  // add your sample size n (an integer, int)
  int n;
  
  // add your data, a vector of real numbers (real) of length n.
  real x[n];
}

parameters {
  // declare the parameter k, which is a real number with a lower bound of 0
  real<lower=0> k;
  
  // declare the parameter lambda, which is a real number with a lower bound of 0
  real<lower=0> lambda;
}

model {
  // specify an exponential prior for k
  k ~ exponential(0.01);

  // specify an exponential prior for lambda
  lambda ~ exponential(0.01);

  // specify the model that x follows a weibull distribution with parameters k and lambda
  x ~ weibull(k, lambda);
}
