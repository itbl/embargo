Embargo.Views.Reports ||= {}

class Embargo.Views.Reports.IndexView extends Backbone.View
  template: JST["backbone/templates/reports/index"]

  initialize: () ->
    @options.reports.bind('reset', @addAll)

  addAll: () =>
    @options.reports.each(@addOne)

  addOne: (report) =>
    view = new Embargo.Views.Reports.ReportView({model : report})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(reports: @options.reports.toJSON() ))
    @addAll()

    return this
