class Embargo.Models.Client extends Backbone.Model
  paramRoot: 'client'

  defaults:
    email: null
    name: null
    homepage: null

class Embargo.Collections.ClientsCollection extends Backbone.Collection
  model: Embargo.Models.Client
  url: '/clients'
