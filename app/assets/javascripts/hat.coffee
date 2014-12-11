$ = jQuery

class Christmasify
  logoSelectors: [
    '#header h2 a'
    '.logo'
    '#logo'
    '.navbar-brand' # for bootstrap
  ]

  hat: '<div class="santas-hat"></div>'

  init: (selector=null)->
    logoSelectors = @logoSelectors.concat selector
    logoSelectors.each (logo)=>
      jQuery(logo).append(@hat)

$ ->
  christmasify = new Christmasify()
  christmasify.init()
