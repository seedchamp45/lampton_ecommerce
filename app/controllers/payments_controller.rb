require "omise"

class PaymentsController < ApplicationController

 def index
  @payment = Payment.order('created_at')
 end
  def new
    puts "==========> go to this function"
  	@payment = Payment.new

  end

   def create
        puts "==========> go to this function"
        Omise.secret_api_key = "skey_5bef85o624z06dzj3e1"
   	#Omise.secret_api_key = "skey_5bef85o624z06dzj3e1"
		@payment = Payment.new(params.require(:payment).permit(:omise_token, :amount, :desc))
     


    if @payment.save


		charge = Omise::Charge.create({
			amount: params[:payment][:amount],
			currency: "thb",
      description: params[:payment][:desc],
			card:  params[:payment][:omise_token]
			})
		if charge.paid
  			# handle success
  			puts "thanks"
        redirect_to '/checkout/confirm'
		else
  		# handle failure
       flash.now[:error] = "ERROR! TRY AGAIN"
  	   redirect_to '/checkout/payment'
		end

  end

   end

  def omise_params
  	params.require(:photo).permit(:title, :image)
 end
end
