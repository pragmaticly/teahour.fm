do ->
  noop = ->
  methods = ['assert', 'clear', 'count', 'debug', 'dir', 'dirxml', 'error',
    'exception', 'group', 'groupCollapsed', 'groupEnd', 'info', 'log',
      'markTimeline', 'profile', 'profileEnd', 'table', 'time', 'timeEnd',
      'timeStamp', 'trace', 'warn']

  console = (window.console or= {})

  for i in [0..methods.length]
      method = methods[i]
      console[method] or= noop

  true

window.location_pathname = ->
  location.pathname.replace(/index.\w+$/, '')

$ ->
  $(".notes").css('display', 'none');
  $(".toggle-notes").click (e) ->
    e.preventDefault()
    e.stopPropagation()
    $(this).parent().siblings(".notes").toggle()

# Modernizr.load [
  # {
    # load: '/javascripts/vendor/plugins/jquery.meca-2.1.0.js',
    # # callback: (url, result, key) -> console.log url, result, key
    # complete: ->
      # $ ->
        # $('a[href^="#"]:not([data-toggle])').meca('smoothScroll')
        # $('.over').meca('hover')
        # $('a[rel~="external"]').meca('external')
  # }
# ]
