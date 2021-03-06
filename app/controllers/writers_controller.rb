class WritersController < ApplicationController
  before_action :guard_other

  def show
  	@writer = Writer.find(params[:id])
  end

  def edit
  	@writer = Writer.find(params[:id])
  end

  def update
  	@writer = Writer.find(params[:id])
  	if @writer.update(writer_params)
  	  redirect_to writer_path(@writer)
  	else
  	  redirect_back(fallback_location: root_url)
  	end
  end

  def edit_password
    @writer = Writer.find(params[:id])
  end

  def update_password
    @writer = Writer.find(params[:id])
    if @writer.update(writer_params)
      redirect_to root_path
    else
      render :edit_password
    end
  end

  private

  def writer_params
  	params.require(:writer).permit(:name, :email, :introduction, :image, :password, :password_confirmation)
  end

  def guard_other
  	unless writer_signed_in?
  	  redirect_to root_path
  	end
  end
end
