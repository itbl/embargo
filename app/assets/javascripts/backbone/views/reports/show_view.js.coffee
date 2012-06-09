Embargo.Views.Reports ||= {}

class Embargo.Views.Reports.ShowView extends Backbone.View
  template: JST["backbone/templates/reports/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
