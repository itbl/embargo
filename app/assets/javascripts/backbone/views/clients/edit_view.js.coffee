Embargo.Views.Clients ||= {}

class Embargo.Views.Clients.EditView extends Backbone.View
  template : JST["backbone/templates/clients/edit"]

  events :
    "submit #edit-client" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (client) =>
        @model = client
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
