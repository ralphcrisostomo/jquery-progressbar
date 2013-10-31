$(document).ready ->


  runProgressBar = ->

    i = 0
    clearInterval(interval)
    interval = setInterval =>
      if i > 10
        i = 0
        clearInterval(interval)

      $("body").progressbar(i * 10)

      i++
    , 500

  window.runProgressBar = runProgressBar