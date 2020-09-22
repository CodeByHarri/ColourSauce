#' Complete list of palettes
#'
#' Use \code{\link{coloursauce}} to construct palettes of desired length.
#'
#' @export
saucecolours <- list(
  CoolRdBu = c("#e63946", "#f1faee", "#a8dadc", "#457b9d", "#1d3557"),
  CoolHeat = c("#003049", "#d62828", "#f77f00", "#fcbf49", "#eae2b7"),
  CoolContrast1 = c("#000000", "#14213d", "#fca311", "#e5e5e5", "#ffffff"),
  CoolContrast2 = c("#011627", "#fdfffc", "#2ec4b6", "#e71d36", "#ff9f1c"),
  CoolCocoa = c("#cb997e", "#eddcd2", "#fff1e6", "#f0efeb", "#ddbea9", "#a5a58d", "#b7b7a4"),
  CoolGnRd = c("#283d3b", "#197278", "#edddd4", "#c44536", "#772e25"),
  CoolDarkLava = c("#463f3a", "#8a817c", "#bcb8b1", "#f4f3ee", "#e0afa0"),
  CoolSageBrown = c("#c9cba3", "#ffe1a8", "#e26d5c", "#723d46", "#472d30"),
  CoolBlueCopper = c("#11151c", "#212d40", "#364156", "#7d4e57", "#d66853"),
  CoolShadowRose = c("#cebebe", "#ece2d0", "#d5b9b2", "#a26769", "#6d2e46")

)

#' A Wes Anderson palette generator
#'
#' These are a handful of color palettes from Wes Anderson movies.
#'
#' @param n Number of colors desired. Unfortunately most palettes now only
#'   have 4 or 5 colors. But hopefully we'll add more palettes soon. All color
#'   schemes are derived from the most excellent Tumblr blog:
#'   \href{http://wesandersonpalettes.tumblr.com/}{Wes Anderson Palettes}.
#'   If omitted, uses all colours.
#' @param name Name of desired palette. Choices are:
#'   \code{BottleRocket1}, \code{BottleRocket2},  \code{Rushmore1},
#'   \code{Royal1}, \code{Royal2},  \code{Zissou1}, \code{Darjeeling1},
#'   \code{Darjeeling2},  \code{Chevalier1} , \code{FantasticFox1} ,
#'   \code{Moonrise1}, \code{Moonrise2}, \code{Moonrise3}, \code{Cavalcanti1},
#'   \code{GrandBudapest1}, \code{GrandBudapest2}, \code{IsleofDogs1}, \code{IsleofDogs2}
#' @param type Either "continuous" or "discrete". Use continuous if you want
#'   to automatically interpolate between colours.
#'   @importFrom graphics rgb rect par image text
#' @return A vector of colours.
#' @export
#' @keywords colors
#' @examples
#' coloursauce("Royal1")
#' coloursauce("GrandBudapest1")
#' coloursauce("Cavalcanti1")
#' coloursauce("Cavalcanti1", 3)
#'
#' # If you need more colours than normally found in a palette, you
#' # can use a continuous palette to interpolate between existing
#' # colours
#' pal <- coloursauce(21, name = "Zissou1", type = "continuous")
#' image(volcano, col = pal)
coloursauce <- function(name, n, type = c("discrete", "continuous")) {
  type <- match.arg(type)

  pal <- saucecolours[[name]]
  if (is.null(pal))
    stop("Palette not found.")

  if (missing(n)) {
    n <- length(pal)
  }

  if (type == "discrete" && n > length(pal)) {
    stop("Number of requested colors greater than what palette can offer")
  }

  out <- switch(type,
    continuous = grDevices::colorRampPalette(pal)(n),
    discrete = pal[1:n]
  )
  structure(out, class = "palette", name = name)
}

#' @export
#' @importFrom graphics rect par image text
#' @importFrom grDevices rgb
print.palette <- function(x, ...) {
  n <- length(x)
  old <- par(mar = c(0.5, 0.5, 0.5, 0.5))
  on.exit(par(old))

  image(1:n, 1, as.matrix(1:n), col = x,
    ylab = "", xaxt = "n", yaxt = "n", bty = "n")

  rect(0, 0.9, n + 1, 1.1, col = rgb(1, 1, 1, 0.8), border = NA)
  text((n + 1) / 2, 1, labels = attr(x, "name"), cex = 1, family = "serif")
}

#' heatmap
#'
#' A heatmap example
"heatmap"
