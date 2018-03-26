
require "omise"


class CompanyProfileController < ApplicationController
  def new


Omise.secret_api_key = "skey_test_4xs8breq3htbkj03d2x"

charge = Omise::Charge.create({
  amount: 100000,
  currency: "thb",
  card: "tokn_test_4xs9408a642a1htto8z"
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
