$(document).on 'page:before-change', ->
  window.scroll_top = window.scrollY
$(document).on 'page:load', ->
  window.scrollTo(0, window.scroll_top) if window.scroll_top
