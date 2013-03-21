# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $('#micropost_content').bind 'keyup', ->
    if $(this).val().length <= 140
      $('#countdown').val 140 - this.value.length
    else
      $(this).val $(this).val().substring(0,140)
      $('#countdown').val 0