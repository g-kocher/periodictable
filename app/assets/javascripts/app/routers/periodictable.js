PTApp.Routers.PeriodicTable = Backbone.Router.extend({
  routes: {
    '': 'index'
  },

  index: function(){
    var view = new PTApp.Views.PeriodicTable({collection: PTApp.elements});
    $('body').html(view.render().$el)
  }
});