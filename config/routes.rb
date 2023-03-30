Rails.application.routes.draw do

  get("/square/new", { :controller => "application", :action => "blank_square_form" })

  get("/square/results", { :controller => "application", :action => "calculate_square" })

  get("/random/new", { :controller => "application", :action => "calculate_random" })

  get("/square_root/new", { :controller => "application", :action => "calculate_square_root" })

  get("/payment/new", { :controller => "application", :action => "calculate_payment" })

  #Write your routes above this line
  # ================================

end
