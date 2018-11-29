
require "omise"


class CompanyProfileController < ApplicationController
	def new
		
		 @amount = (@order.display_order_total_after_store_credit.money * 100).to_i

		charge = Omise::Charge.create({
			amount: @amount,
			currency: "thb",

			card: params[:omise_token]
			})
		if charge.paid
  			# handle success
  			puts "thanks"
		else
  		# handle failure
  		raise charge.failure_code
		end
	end
end
