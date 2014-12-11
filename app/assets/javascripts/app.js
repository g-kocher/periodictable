//= require_self
//= require_tree ./app/models
//= require_tree ./app/collections
//= require_tree ./app/views
//= require_tree ./app/routers

var PTApp = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},

  initialize: function(data){
    this.elements = new PTApp.Collections.Elements(data.elements);
    router = new PTApp.Routers.PeriodicTable;
    Backbone.history.start();
  }
};