class CompanyProfileController < ApplicationController
  def companyptofile



  	charge = Omise::Charge.create({
  amount: 1_000_00,
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
