class ElementsController < ApplicationController
  respond_to :html, :json

  def index
    respond_with(@elements = Element.all)
  end
  
end
