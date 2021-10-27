#' @title Descriptive data for BRMS debugging
#'
#' @description
#'
#' General model formula:
#'
#' ```
#' f0 <- brms::brmsformula(
#'   respons ~ pnt_prd + tm_snc + SGU + z_bins_fac2 + fSCA + prcp + tmin + tmax +
#'   sar(M = w0, type = 'error') +
#'   ar(time = year, gr = pixel, p = 1),
#'   family = gaussian()
#' )
#' ```
#'
#' Model run:
#'
#' ```
#' mod0 <- brms::brm(
#'   formula = f0, data = cb_df, data2 = list(w0 = w0),
#'   prior = NULL, iter = 2000, cores = 4, chains = 4,
#'   silent = 0
#' )
#' ```
#'
#' The first element of the list is the input data.frame, for `test_2` this is a `data.frame` with 1850 rows and 33 columns.
#'
#' The second and third elements of the list are the spatial weights matrix and model formula, respectively.
#'
#' This model DID NOT run, error message:
#'
#' ```
#' Compiling Stan program...
#' Start sampling
#' Error in mod$fit_ptr() :
#' Exception: variable does not exist; processing stage=data initialization; variable name=eigenMsar; base type=vector_d  (in 'model750d2c580e_5c0c99c82ea5eda165ec4d5a5340d18e' at line 61)
#' ```
#'
'test_2'
#' @title Descriptive data for BRMS debugging
#'
#' @description
#'
#' General model formula:
#'
#' ```
#' f0 <- brms::brmsformula(
#'   respons ~ pnt_prd + tm_snc + SGU + z_bins_fac2 + fSCA + prcp + tmin + tmax +
#'   sar(M = w0, type = 'error') +
#'   ar(time = year, gr = pixel, p = 1),
#'   family = gaussian()
#' )
#' ```
#'
#' Model run:
#'
#' ```
#' mod0 <- brms::brm(
#'   formula = f0, data = cb_df, data2 = list(w0 = w0),
#'   prior = NULL, iter = 2000, cores = 4, chains = 4,
#'   silent = 0
#' )
#' ```
#'
#' The first element of the list is the input data.frame, for `test_3` this is a `data.frame` with 1480 rows and 33 columns.
#'
#' This model ran successfully.
'test_3'
