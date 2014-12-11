PTApp.Routers.PeriodicTable = Backbone.Router.extend({
  routes: {
    '': 'index',
    ':element': 'show'
  },

  //display the periodic table
  index: function(){
    var view = new PTApp.Views.PeriodicTable({collection: PTApp.elements});
    $('body').html(view.render().$el)
  },

  //display detailed view for any element, or periodic table if element doesn't exist
  show: function(element){
    if (this.elementExists(element)){
      $('body').html("<h1>"+element+"</h1>");
    } else {
      this.index();
    }
  },

  //allow show to test if the element
  elementExists: function(name){
    name = name.charAt(0).toUpperCase()+name.slice(1).toLowerCase();  //could add capitalize() to string prototype
    return (undefined !== PTApp.elements.findWhere({name: name}) );
  }
});