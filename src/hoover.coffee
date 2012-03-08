#--------
# hoover
#--------

(($) ->
  $.fn.hoover = (options) ->
    el = @
    timeout = null
    hovering = false
    settings =
      in: 250
      out: 150
    $.extend settings, options if options
    enter = ->
      el.trigger "hooverIn"
      reset()
      hovering = true
    leave = ->
      el.trigger "hooverOut"
      reset()
      hovering = false
    reset = ->
      clearTimeout timeout if timeout
      timeout = null
    el.bind "mouseover", =>
      if hovering
        reset()
      else
        timeout = setTimeout(enter, settings.in) unless timeout
    el.bind "mouseout", =>
      if hovering
        reset()  if timeout
        timeout = setTimeout(leave, settings.out)
      else
        reset()
    @

) window.Zepto || window.jQuery
