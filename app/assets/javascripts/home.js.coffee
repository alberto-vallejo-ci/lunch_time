$ ->
  window.LoncheTime ||= {}

  class LoncheTime.Home
    constructor: ->
      @setSlider()

    setSlider: ->
      $('#slider-rate').slider
        range: true
        min: 1
        max: 5
        values: [1, 5]
        slide: (event, ui) ->
          $('#lowest_rate').val(ui.values[0])
          $('#highest_rate').val(ui.values[1])
