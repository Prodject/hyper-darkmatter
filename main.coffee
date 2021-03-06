"use strict"

assign = Object.assign

backgroundColor = "#1c1f26"
foregroundColor = "#c0c5ce"
borderColor = backgroundColor
cursorColor = foregroundColor

red = "#d5713f"
green = "#75bb36"
yellow = "#e7e781"
blue = "#267faf"
magenta = "#a76ebf"
cyan = "#22bae4"
lightCyan = "#58dbff"
lightGreen = "#90cc5b"
lightBlack = "#65737e"
lightBlue = blue
lightMagenta = "#d1a9ce"

decorateConfig = (config) -> assign {}, config, {
  backgroundColor, foregroundColor, cursorColor, borderColor,
  colors: {
    black: backgroundColor, white: foregroundColor,
    red, green, blue, cyan, magenta, yellow,
    lightRed: red, lightYellow: yellow, lightMagenta,
    lightBlack, lightWhite: foregroundColor,
    lightCyan, lightBlue, lightGreen
  }
  css: """
    #{config.css}
    .tab_active {
      background: rgba(101, 115, 126, .10)
    }
  """
}

module.exports.decorateConfig = decorateConfig
