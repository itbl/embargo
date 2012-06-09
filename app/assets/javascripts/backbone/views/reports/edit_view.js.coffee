Embargo.Views.Reports ||= {}

class Embargo.Views.Reports.EditView extends Backbone.View
  template : JST["backbone/templates/reports/edit"]

  events :
    "submit #edit-report" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (report) =>
        @model = report
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
