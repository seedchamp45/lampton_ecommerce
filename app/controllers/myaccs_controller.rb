class MyaccsController < ApplicationController
	def index
		@myaccs = Myacc.order('created_at')
	end

	def new
		@myaccs = Myacc.new
	end

	def create
		@myaccs = Myacc.new( params.require(:myacc).permit(:iduser, :email, :firstname, :lastname, :birthday, :birthmonth, :birthyear, :gender, :mobilenumber ))
		if @myaccs.save
			user = Spree::User.where(:id => params[:myacc][:iduser]).first
			user.update_attribute(:email, params[:myacc][:email])

			if user.save
				redirect_to "/myaccount"
			end
		end


	end
end
