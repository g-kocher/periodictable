PTApp.Views.Element = Backbone.View.extend({
  tagName: 'div',
  className: 'element',

  initialize: function(){
  },

  render: function(){
    this.$el.html(JST['elements/element']({model: this.model}));
    return this;
  }

});