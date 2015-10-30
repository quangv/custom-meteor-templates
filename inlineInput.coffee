Template.inlineInput.events
  'click button': (event, template)->
    template.$('.inline-input').trigger 'inlineInput:done'

  'change input': (event, template)->
    name = event.target.value
    template.$('.inline-input').trigger 'inlineInput:change', name
