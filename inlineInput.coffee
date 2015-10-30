Template.inlineInput.events
  'click button': (event, template)->
    template.$('.inline-input').trigger 'inlineInput:done'

  'keydown input': (event, template)->
    if event.which is 13 or event.which is 27  # enter key or esc key
      template.$('input').trigger 'change'
      template.$('button').click()

  'change input': (event, template)->
    name = event.target.value
    template.$('.inline-input').trigger 'inlineInput:change', name
