Embargo.Views.Clients ||= {}

class Embargo.Views.Clients.NewView extends Backbone.View
  template: JST["backbone/templates/clients/new"]

  events:
    "submit #new-client": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (client) =>
        @model = client
        window.location.hash = "/#{@model.id}"

      error: (client, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
