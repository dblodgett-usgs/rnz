% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/open.R
\name{open_nz}
\alias{open_nz}
\alias{open_nz.Store}
\alias{open_nz.character}
\alias{open_nz.NULL}
\title{open netcdf or zarr}
\usage{
open_nz(nz, backend = NULL, warn = TRUE)

\method{open_nz}{Store}(nz, backend = NULL, warn = TRUE)

\method{open_nz}{character}(nz, backend = NULL, warn = TRUE)

\method{open_nz}{`NULL`}(nz, backend = NULL, warn = TRUE)
}
\arguments{
\item{nz}{a pizzarr store, a path to a zarr store, or a path to a netcdf resource}

\item{backend}{character "pizzarr" or "RNetCDF"
if NULL (the default) will try pizzar first and fall back to RNetCDF}

\item{warn}{logical warn or no warn?}
}
\value{
ZarrGroup or NetCDF object
}
\description{
open netcdf or zarr
}
\examples{
if(requireNamespace("pizzarr", quietly = TRUE)) {

z <- z_demo()

bcsd <- open_nz(z)

class(bcsd)

zarr <- pizzarr::DirectoryStore$new(z)

class(zarr)

bcsd <- open_nz(zarr)

class(bcsd)

}

# equivalent data in NetCDF
if(requireNamespace("RNetCDF", quietly = TRUE)) {
  nc <- z_demo(format = "netcdf")

  bcsd <- open_nz(nc)

  class(bcsd)
}
}
