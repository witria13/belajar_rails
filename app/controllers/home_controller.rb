class HomeController < ApplicationController
  def index
  	@nilai = 'saya sedang belajar controller dan view'
  	@variable = 90/3 *2
  	@array = [1,2,3,4,5]
  	@nilai_user = [1.0, 6.0, 3.0, 4.0, 5.0]

  	@id = params[:id]
  	@page = params[:page]
  end

  def coba
  	render 'user/index'
  end
end
