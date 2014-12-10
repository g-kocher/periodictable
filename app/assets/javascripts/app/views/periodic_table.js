PTApp.Views.PeriodicTable = Backbone.View.extend({
  render: function(){
    var self = this;

    this.$el.html(JST['elements/index']());

    this.collection.each(function(element){
      var elementView = new PTApp.Views.Element({model: element});
      self.$('div#periodic-table').append(elementView.render().el);
    });

    return this;
  }
});