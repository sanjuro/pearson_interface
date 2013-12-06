class NumbersController < ApplicationController

	def index
		@numbers = Number.all

		respond_to do |format|
		  format.html { render :layout => true } # index.html.erb
		  format.xml  { render :xml => @numbers }
		  format.json  { render :json => @numbers }
		end
	end  

	def show
		number = params[:translate_number].to_i
		p number
		@number = Number.find(number)

		respond_to do |format|
		  format.html { render :layout => true } # show.html.erb
		  format.xml  { render :xml => @number }
		  format.json  { render :json => @number }
		end
	end

end
