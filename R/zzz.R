#' DeepOperators
#'
#' Uses the reticulate framework to access Keras

.onAttach <- function(libname, pkgname) {
  deepoperators.env <<- new.env()
  or_model <- keras::unserialize_model(readRDS(system.file("models", "or.rds", package = "DeepOperators", mustWork = TRUE)))
  and_model <- keras::unserialize_model(readRDS(system.file("models", "and.rds", package = "DeepOperators", mustWork = TRUE)))
  eq_model <- keras::unserialize_model(readRDS(system.file("models", "eq.rds", package = "DeepOperators", mustWork = TRUE)))
  not_model <- keras::unserialize_model(readRDS(system.file("models", "not.rds", package = "DeepOperators", mustWork = TRUE)))
<<<<<<< HEAD
  gt_model <- keras::unserialize_model(readRDS(system.file("models", "gt.rds", package = "DeepOperators", mustWork = TRUE)))
  lt_model <- keras::unserialize_model(readRDS(system.file("models", "lt.rds", package = "DeepOperators", mustWork = TRUE)))
=======
>>>>>>> master
  deepoperators.env$models <- list(
    or = or_model,
    and = and_model,
    eq = eq_model,
<<<<<<< HEAD
    not = not_model,
    gt = gt_model,
    lt = lt_model
=======
    not = not_model
>>>>>>> master
  )
}
