class HomesController < ApplicationController

  def about
  	@writer = Writer.find(1)
  end
end
