#' Continuous Ibrrra Color Scales for ggplot2
#'
#' @description Continuous colour scale function to be used with ggplot2
#'
#' @param name name of the color
#' @param direction Sets the order of colors in the scale. If 1, the colors are ordered according to the default. If -1, the order of colors is reversed.
#' @param amount amount of lighting to be used on the color. Default is 0.2
#' @param ... arguments to be passed to ggplot2::discrete_scale
#'
#' @examples
#' scale_colour_ibrrra_seq_c("red")
#' scale_colour_ibrrra_seq_c("red", direction = -1)
#' scale_colour_ibrrra_seq_c("red", amount = 0.8)
#' scale_colour_ibrrra_seq_c("red", direction = -1, amount = 0.8)
#'
#' @export
# This is where functions for your continous scale go
scale_colour_ibrrra_seq_c <- function(name, direction = 1, amount = 0.2, ...) {
  # check that name is in your palette
  # throw an error if it isn't
  stopifnot(name %in% names(ibrrra_colours))

  # set the low colour
  low_col <- ibrrra_colours[name]

  # set the high colour with colorspace pkg
  high_col <- colorspace::lighten(low_col, amount = amount)

  # if direction is < 0 switch high and low
  if (direction < 0) {
    temp <- low_col
    low_col <- high_col
    high_col <- temp
  }

  # pass everything on to ggplot2 color gradient
  ggplot2::scale_color_gradient(
    low = low_col,
    high = high_col,
    ...
  )

}
