#'@description
#'read rda file as rds giving a name
#'
read_rda <- function(x){
  env <- new.env()
  load(x, envir = env)
  get(ls(env), envir = env)
}
