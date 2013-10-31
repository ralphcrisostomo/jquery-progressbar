(function() {
  $(document).ready(function() {
    var runProgressBar;
    runProgressBar = function() {
      var i, interval,
        _this = this;
      i = 0;
      clearInterval(interval);
      return interval = setInterval(function() {
        if (i > 10) {
          i = 0;
          clearInterval(interval);
        }
        $("body").progressbar(i * 10);
        return i++;
      }, 500);
    };
    return window.runProgressBar = runProgressBar;
  });

}).call(this);
