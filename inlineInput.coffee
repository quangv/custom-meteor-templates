Template.inlineInput.events
  'keydown input': (event, template)->
    if event.which is 13 or event.which is 27  # enter key or esc key
      template.$('input').blur()

  'blur input': (event, template)->
    template.$('.inline-input').trigger 'inlineInput:done'

  'change input': (event, template)->
    template.$('.inline-input').trigger 'inlineInput:change', event.target.value

Template.inlineInput.onRendered ->
  # Focus at end of input field
  $input = $('.inline-input')
  $input.focus().val($input.val())
