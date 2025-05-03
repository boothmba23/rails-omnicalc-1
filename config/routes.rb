Rails.application.routes.draw do
  
  get("/", { :controller => "zebra", :action => "home"})  

  get("/square/new", { :controller => "zebra", :action => "square_n"})  
  
  get("/square/results", { :controller => "zebra", :action => "square_r"})  
  
  get("/square_root/new", { :controller => "zebra", :action => "sr_n"})  
  
  get("/square_root/results", { :controller => "zebra", :action => "sr_r"})  
  
  get("/payment/new", { :controller => "zebra", :action => "payment_n"})
  
  get("/payment/results", { :controller => "zebra", :action => "payment_r"})
    
  get("/random/new", { :controller => "zebra", :action => "random_n"})
  
  get("/random/results", { :controller => "zebra", :action => "random_r"})
end
