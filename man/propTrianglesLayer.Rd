% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/propTrianglesLayer.R
\name{propTrianglesLayer}
\alias{propTrianglesLayer}
\title{Double Proportional Triangle Layer}
\usage{
propTrianglesLayer(spdf, df, spdfid = NULL, dfid = NULL, var1,
  col1 = "#E84923", var2, col2 = "#7DC437", k = 0.02,
  legend.pos = "topright", legend.title.txt = paste(var1, var2, sep =
  " / "), legend.title.cex = 0.8, legend.var1.txt = var1,
  legend.var2.txt = var2, legend.values.cex = 0.6, legend.values.rnd = 0,
  legend.style = "c", legend.frame = FALSE, add = TRUE)
}
\arguments{
\item{spdf}{a SpatialPointsDataFrame or a SpatialPolygonsDataFrame; if spdf 
is a SpatialPolygonsDataFrame symbols are plotted on centroids.}

\item{df}{a data frame that contains the values to plot.}

\item{spdfid}{identifier field in spdf, default to the first column 
of the spdf data frame. (optional)}

\item{dfid}{identifier field in df, default to the first column 
of df. (optional)}

\item{var1}{name of the first numeric field in df to plot, positive values 
only (top triangle).}

\item{col1}{color of top triangles.}

\item{var2}{name of the second  numeric field in df to plot, positive values 
only (bottom triangle).}

\item{col2}{color of bottom triangles.}

\item{k}{share of the map occupied by the biggest symbol.}

\item{legend.pos}{position of the legend, one of "topleft", "top", 
"topright", "left", "right", "bottomleft", "bottom", "bottomright". If 
legend.pos is "n" then the legend is not plotted.}

\item{legend.title.txt}{title of the legend.}

\item{legend.title.cex}{size of the legend title.}

\item{legend.var1.txt}{label of the top variable.}

\item{legend.var2.txt}{label of the bottom variable.}

\item{legend.values.cex}{size of the values in the legend.}

\item{legend.values.rnd}{number of decimal places of the values 
displayed in the legend.}

\item{legend.style}{either "c" or "e". The legend has two display 
styles, "c" stands for compact and "e" for extended.}

\item{legend.frame}{boolean; whether to add a frame to the legend (TRUE) or 
not (FALSE).}

\item{add}{whether to add the layer to an existing plot (TRUE) or 
not (FALSE).}
}
\description{
Plot a double proportional triangles layer.
}
\examples{
data("nuts2006")
# Example 1
plot(nuts0.spdf)
# There is no data for deaths in Turkey
propTrianglesLayer(spdf = nuts0.spdf, df = nuts0.df, 
                   var1 = "birth_2008",
                   var2 = "death_2008")

# Example 2
layoutLayer(title = "Births and Deaths in Europe, 2008",
            sources = "",author = "",
            scale = NULL,
            frame = FALSE,
            col = "black",
            coltitle = "white",
            extent = nuts0.spdf)
plot(countries.spdf,col="#E0E0E0",border="white",lwd=1, add=TRUE)
plot(nuts0.spdf,col="#E5CFC1",border="white",lwd=2,add=TRUE)
# There is no data for deaths in Turkey
propTrianglesLayer(spdf = nuts0.spdf, df = nuts0.df, 
                   var1 = "birth_2008", legend.style = "e",
                   var2 = "death_2008", legend.frame = TRUE,
                   col1="#FF9100",col2="#45C945",k = 0.1, add=TRUE)
}
\seealso{
\link{legendPropTriangles}
}

