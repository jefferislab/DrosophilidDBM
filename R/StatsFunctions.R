# general purpose statistical functions

#' Permutation based testing of values for two groups
#' @details - fewer assumptions than t.test, may be more powerful than 
#' regular non paprametrics (Mann-Whitney/Wilcoxon etc ).
#' See oneway_test (in package coin) for further details
#' @param x, y Values for two groups
#' @param group.x, group.y Character vectors specifying group names
#' @param nperms Number of permutations (default 10000)
#' @seealso t.test, wilcox.test, oneway_test
#' @examples
#' Dsim_MB=rnorm(30,mean=300,10)
#' Dmel_MB=rnorm(20,mean=350,20)
#' oneway.permtest(Dsim_MB,Dmel_MB,'Dsim','Dmel')
#' oneway.permtest(Dsim_MB,Dmel_MB,'Dsim','Dmel')
oneway.permtest<-function(x,y,group.x="X",group.y="Y",nperms=10000){
  # coin library implements what we need
  installnload("coin")
  groupnames=c(group.x,group.y)
  group=rep(groupnames,c(length(x),length(y)))
  # note that levels of factor are specified explicitly to ensure that group
  # are not sorted alphabetically 
  # (which may cause surprises if the test is dobe for A,B when we were given B,A)
  regiondf=data.frame(vol=c(x,y),group=factor(group,levels=groupnames))  
  oneway_test(vol~group,data=regiondf,distribution=approximate(B=nperms))
}

