# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

require 'rubygems'
require 'faker'
class ApplicationController < ActionController::Base
  include Faker
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '7cb37be2f47063b79e6cf0e79f43cc38'

  before_filter :generate_fake

#  for method in Internet.methods(false)
#    define_method(method) { instance_eval("Internet.#{method}") }
#  end
  def generate_fake
    @fake_hash = {}
    @fake_hash["Name"] = Name.name
    @fake_hash["First name"] = Name.first_name
    @fake_hash["Last name"] = Name.last_name
    @fake_hash["Prefix"] = Name.prefix
    @fake_hash["Suffix"] = Name.suffix
    @fake_hash["Phone number"] = PhoneNumber.phone_number
    @fake_hash["User name"] = Internet.user_name
    @fake_hash["Email"]= Internet.email
    @fake_hash["Free email"] = Internet.free_email
    @fake_hash["Domain name"] = Internet.domain_name
    @fake_hash["Domain suffix"] = Internet.domain_suffix
    @fake_hash["Domain word"] = Internet.domain_word
    @fake_hash["Bs"] = Company.bs
    @fake_hash["Company name"] = Company.name
    @fake_hash["Company suffix"] = Company.suffix
    @fake_hash["Catch phrase"] = Company.catch_phrase
    @fake_hash["Street address"] = Address.street_address
    @fake_hash["Street name"] = Address.street_name
    @fake_hash["Street suffix"] = Address.street_suffix
    @fake_hash["US state"] = Address.us_state
    @fake_hash["US state abbr"] = Address.us_state_abbr
    @fake_hash["Zip code"] = Address.zip_code

    @fake_keys = ["Name", "First name", "Last name", "Prefix", "Suffix", "Phone number",
    "User name", "Email", "Free email","Domain name", "Domain suffix", 
    "Domain word", "Bs", "Company name", "Company suffix", "Catch phrase",
    "Street address", "Street name", "Street suffix", "US state", "US state abbr",
    "Zip code"]
  end

  def host
    @host = request.host
  end

end
