class Embargo.Models.Report extends Backbone.Model
  paramRoot: 'report'

  defaults:
    title: null
    description: null
    type: null
    user: null
    client: null

class Embargo.Collections.ReportsCollection extends Backbone.Collection
  model: Embargo.Models.Report
  url: '/reports'
