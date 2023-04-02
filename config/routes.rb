Rails.application.routes.draw do
 
  get("/square/new", { :controller => "application", :action => "blank_square_form" })

  get("/square/results", { :controller => "application", :action => "calculate_square" })

  get("/random/new", { :controller => "application", :action => "random_form" })

  get("random/results", { :controller => "application", :action => "calculate_random" })

  get("/square_root/new", { :controller =>"application", :action => "calculate_square_root" })

  get("/square_root/results", { :controller => "application", :action => "blank_square_root" })

  get("/payment/new", { :controller => "application", :action => "calculate_payment" })

  get("/payment/results", { :controller => "application", :action => "payment_results" })

  #Write your routes above this line
  # ================================

 # devise_for :admin_users, ActiveAdmin::Device
 # ActiveAdmin.routes(self)

end
  