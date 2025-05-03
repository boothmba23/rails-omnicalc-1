class ZebraController < ApplicationController 
  def home

    render({:template =>"game_templates/homepage"}) 
  end 

def square_n
  

  render({:template =>"game_templates/square_n"}) 
  end 



  def square_r
   
    @the_num = params.fetch("users_number").to_f 
    @the_results = @the_num ** 2 
   
    render({:template =>"game_templates/square_r"}) 
  end 

  def sr_n 
    
    render({:template =>"game_templates/sr_n"}) 
  end 

  def sr_r
    @the_square = params.fetch("users_number").to_f 
    @the_square_root = Math.sqrt(@the_square) 
  
   render({:template =>"game_templates/sr_r"}) 
  end 

  def payment_n 

  render(:template => "game_templates/payment_n")

end

def payment_r
  years = params.fetch("user_years").to_i * 12
  apr  = params.fetch("user_apr").to_f  / 1200
  raw_apr = params.fetch("user_apr").to_f 
  @apr_rounded = raw_apr.to_fs(:percentage, {:precision => 4})
  pv_raw  = params.fetch("user_pv").to_f 
  @pv = pv_raw.to_fs(:currency)
  numerator   = apr * pv_raw
  denominator = 1 - (1 + apr)**(-years)
  
  raw_payment    = numerator / denominator
  @payment = raw_payment.to_fs(:currency)

  render(:template => "game_templates/payment_r")

end

def random_n

  render(:template => "game_templates/random_n")
end 

def random_r
  @user_min = params.fetch("user_min").to_f
  @user_max = params.fetch("user_max").to_f
  
  @result = rand(@user_min..@user_max)
    render(:template => "game_templates/random_r")
end

end
