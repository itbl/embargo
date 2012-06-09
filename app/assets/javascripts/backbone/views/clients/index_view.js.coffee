Embargo.Views.Clients ||= {}

class Embargo.Views.Clients.IndexView extends Backbone.View
  template: JST["backbone/templates/clients/index"]

  initialize: () ->
    @options.clients.bind('reset', @addAll)

  addAll: () =>
    @options.clients.each(@addOne)

  addOne: (client) =>
    view = new Embargo.Views.Clients.ClientView({model : client})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(clients: @options.clients.toJSON() ))
    @addAll()

    return this
