class Embargo.Routers.ReportsRouter extends Backbone.Router
  initialize: (options) ->
    @reports = new Embargo.Collections.ReportsCollection()
    @reports.reset options.reports

  routes:
    "new"      : "newReport"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newReport: ->
    @view = new Embargo.Views.Reports.NewView(collection: @reports)
    $("#reports").html(@view.render().el)

  index: ->
    @view = new Embargo.Views.Reports.IndexView(reports: @reports)
    $("#reports").html(@view.render().el)

  show: (id) ->
    report = @reports.get(id)

    @view = new Embargo.Views.Reports.ShowView(model: report)
    $("#reports").html(@view.render().el)

  edit: (id) ->
    report = @reports.get(id)

    @view = new Embargo.Views.Reports.EditView(model: report)
    $("#reports").html(@view.render().el)
