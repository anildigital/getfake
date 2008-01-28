# Code by Anil Wadghule
class HomeController < ApplicationController
  # index page
  def index
  end

  def refresh_getfake_data
    respond_to do |format|
      format.js {render :template => "home/_getfake_data.html.erb"}
    end
  end
  
  def refresh_getfake_yaml
    respond_to do |format|
      format.js {render :template => "home/_getfake_yaml.html.erb"}
    end
  end

  def first_name
  end
  def last_name
  end
  def user_name
  end
  def user_name
  end
  def prefix
  end
  def suffix
  end
  def phone_numer
  end
  def email
  end
  def free_email
  end
  def domain_name
  end
  def domain_suffix 
  end
  def domain_word
  end
  def bs 
  end
end
