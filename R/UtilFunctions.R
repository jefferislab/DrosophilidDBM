#' Simple utility function to load a package, first installing it if not present
installnload<-function(pack){
  if(!require(pack,character.only=TRUE)) {
    t=try(install.packages(pack))
    if(inherits(t,'try-error')) stop("Unable to install (and load) package: ",pack)
    if(!require(pack,character.only=TRUE)) stop("Unable to load package: ",pack)
  }
}
