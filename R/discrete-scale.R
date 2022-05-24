#' Discrete Ibrrra Color and Fill Scales for ggplot2
#'
#' @description Discrete color and fill scale functions to be used with ggplot2
#'
#' @param direction Sets the order of colors in the scale. If 1, the colors are ordered according to the default. If -1, the order of colors is reversed.
#' @param ... arguments to be passed to ggplot2::discrete_scale
#'
#' @examples
#' scale_colour_ibrrra_d()
#' scale_colour_ibrrra_d(direction = -1)
#' scale_fill_ibrrra_d()
#' scale_fill_ibrrra_d(direction = -1)
#'
#' @export
# This is where your discrete ggplot palettes would go
scale_colour_ibrrra_d <- function(direction = 1, ...) {
  ggplot2::discrete_scale(
    "colour", "ibrrra",
    ibrrra_palette(direction),
    ...
  )
}

#' @rdname scale_colour_ibrrra_d
#' @export
scale_fill_ibrrra_d <- function(direction = 1, ...) {
  ggplot2::discrete_scale(
    "fill", "ibrrra",
    ibrrra_palette(direction),
    ...
  )
}
