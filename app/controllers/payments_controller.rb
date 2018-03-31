require "omise"

class PaymentsController < ApplicationController
    protect_from_forgery prepend: true
   
 def index
  @payment = Payment.new
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
    respond_to do |format|
		if charge.paid
  			# handle success
  			puts "thanks"
         format.html { redirect_to '/checkout/confirm'}
    
		else
  		# handle failure
       puts charge.failure_code.to_s
       format.html { redirect_to '/checkout/payment', notice: charge.failure_code.to_s }
  	   
		end
  end

  end

   end

  def omise_params
  	params.require(:photo).permit(:title, :image)
 end
end

