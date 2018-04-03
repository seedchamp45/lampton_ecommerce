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
        Omise.secret_api_key = "skey_test_5b9rzvva6bgfn7zh1tz"
   	#Omise.secret_api_key = "skey_5bef85o624z06dzj3e1"
    #skey_test_5b9rzvva6bgfn7zh1tz
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
        redirect_to '/checkout/payment#success' 
    
		else
  		# handle failure
       puts charge.failure_code.to_s
       flash[:error] = "เกิดข้อผิดพลาด กรุณาลองใหม่อีกรอบ (ระบบยังไม่ทำการตัดเงิน)"
       #match '/checkout/payment' => redirect_to{ |p,req| req.flash[:alert] = "เกิดข้อผิดพลาด กรุณาลองใหม่อีกรอบ (ระบบยังไม่ทำการตัดเงิน)"; "/"}
       redirect_to '/checkout/payment#error'
  	   
		end


  end

   end

  def omise_params
  	params.require(:photo).permit(:title, :image)
 end
end

