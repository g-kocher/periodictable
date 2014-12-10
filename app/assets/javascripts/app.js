//= require_self
//= require_tree ./app/models
//= require_tree ./app/collections
//= require_tree ./app/views
//= require_tree ./app/routers
//= require_tree ./app/templates

var PTApp = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},

  initialize: function(){
    this.elements = new PTApp.Collections.Elements(data.elements);
    new PTApp.Routers.PeriodicTable;
    Backbone.history.start();
  }
};