#  @project progressBarJS
#  @url http://ralphcrisostomo.github.com/progressBarJS/
#  @author Ralph Crisostomo


(($) ->
  "use strict"

  ###
  Defaults
  ###
  defaults =
    isRemoveOnComplete:   true
    className:          "waiting"
    id:                 "progress"
    height:             "2px"
    backgroundColor:    "#b91f1f"
    progress:              0


  ###
  Class
  ###
  class ProgressBar

    constructor: (@el, @options) ->
      @$el = $ @el
      @initialize()


    initialize: ->
      @div =  @createElement()
      @render()


    render: ->
      @$el.append @div

    createElement: ->
      id                  = @options.id
      className           = @options.className
      progress            = @options.progress
      height              = @options.height
      backgroundColor     = @options.backgroundColor

      div                 = document.createElement('div')
      dt                  = document.createElement('dt')
      dd                  = document.createElement('dd')

      # Setup div element

      div = $(div)
      div.attr
        id: id
        class: className
      div.css
        backgroundColor:  backgroundColor
        height:           height
        width:            "#{progress}%"

      div.append dt
      div.append dd
      div


    updateProgress: (value, callback = ->) ->
      isRemoveOnComplete  = @options.isRemoveOnComplete

      @div.css
        width: "#{value}%"

      if value is 100 and isRemoveOnComplete
        @destroy(callback)

    destroy: (callback)->
      setTimeout =>
        @div.attr
          class: "done"
        setTimeout =>
          @div.remove()
          callback()
        , 500
      , 1000



  ###*
  PROGRESSBAR PLUGIN DEFINITION
  ###
  old = $.fn.progressbar

  $.fn.progressbar = (options) ->
    @each ->

      ###
      Initialize
      ###
      if not @progressbar

        options = $.extend {}, defaults, options
        @progressbar = new ProgressBar this, options

      ###
      Options is number
      ###
      if options and typeof options is "number"
        @progressbar.updateProgress options, =>
          @progressbar = null
          @progressbar = undefined


      ###
      Options is object
      ###
      if options and typeof options is "object"
        $.extend @progressbar.options, options # update settings
        @progressbar.updateProgress options.progress if options.progress

  $.fn.progressbar.Constructor = ProgressBar

  ###*
  PROGRESSBAR NO CONFLICT
  ###
  $.fn.progressbar.noConflict = ->
    $.fn.progressbar = old
    @

)(jQuery)
