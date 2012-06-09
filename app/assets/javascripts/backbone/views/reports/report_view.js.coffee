Embargo.Views.Reports ||= {}

class Embargo.Views.Reports.ReportView extends Backbone.View
  template: JST["backbone/templates/reports/report"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
