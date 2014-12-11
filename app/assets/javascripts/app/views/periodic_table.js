PTApp.Views.PeriodicTable = Backbone.View.extend({
  render: function(){
    var self = this;

    this.$el.html(JST['elements/index']());

    this.collection.each(function(element){
      var elementView = new PTApp.Views.Element({model: element});
      self.$('div#periodic-table').append(elementView.render().el);
    });

    return this;
  },

  events: {
    'click div.element': "elementDetail"
  },

  elementDetail: function(e){
    var element = $(e.currentTarget).attr('title');
    router.navigate(element, true);
  }
});