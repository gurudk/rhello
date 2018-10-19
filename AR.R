#
# time series AR(1) simulation
# r(t) = phi0 + phi1*r(t-1) + a(t)
#

ar1 <- function(N, phi0, phi1){
  r <- array(0,N)
  r[1] <- phi0 + rnorm(1, 0, 1)
  for(i in c(2:N)){
    r[i] <- phi0 + phi1 * r[i-1] + rnorm(1, 0, 1)
  }
  
  return(r)
}