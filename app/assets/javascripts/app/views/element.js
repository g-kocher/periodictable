PTApp.Views.Element = Backbone.View.extend({
  tagName: 'div',
  attributes: function(){
    return {
      title: this.model.get('name'),
      class: ('element period-' + this.model.get('period') +' group-' + this.model.get('group'))
    }
  },

  events: {
    
  },

  render: function(){
    this.$el.html(JST['elements/element']({model: this.model}));
    return this;
  }

});