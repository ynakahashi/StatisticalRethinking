data {
   int<lower=1> N;
   vector[N] X;
   vector[N] Y;
}

parameters {
   real b0;
   real b1;
   real<lower=0> sigma;
}

model {
   Y ~ normal(b0 + b1 * X, sigma);
}
