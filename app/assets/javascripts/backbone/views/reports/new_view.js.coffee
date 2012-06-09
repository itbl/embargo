Embargo.Views.Reports ||= {}

class Embargo.Views.Reports.NewView extends Backbone.View
  template: JST["backbone/templates/reports/new"]

  events:
    "submit #new-report": "save"

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
      success: (report) =>
        @model = report
        window.location.hash = "/#{@model.id}"

      error: (report, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
