class DashboardController < ApplicationController

	def search

      @names=params[:search].split(' ') if params[:search]
     
      if @names.length() ==1 
        @search_users = User.where("first_name LIKE ?", "%#{@names[0]}")
      elsif @names.length() >1
        @search_users = User.where("first_name LIKE ? OR last_name LIKE ?", "%#{@names[0]}","%#{@names[1]}") 
      end
      
	 end

	def index
  	
	end


end
