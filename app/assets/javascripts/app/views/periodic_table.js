PTApp.Views.PeriodicTable = Backbone.View.extend({
  render: function(){
    this.$el.html(JST['elements/index']({elements: this.collection}));
    return this;
  }
});