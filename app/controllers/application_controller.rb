class ApplicationController < ActionController::Base
  
     def blank_square_form

    
      render({ :template => "calculation_templates/square_form.html.erb"})
     end

     def calculate_square

      @num = params.fetch("elephant").to_f

      @square_of_num = @num ** 2

        render({ :template => "calculation_templates/square_results.html.erb"})
     end

     def random_form

      render({ :template => "calculation_templates/random_form.html.erb"})
     end

     def calculate_random

         @lower = params.fetch("user_min").to_f 
         @upper = params.fetch("user_max").to_f 
         @result = rand(@lower..@upper)
       render({ :template => "calculation_templates/calculate_results.html.erb"})
     end

    def blank_square_root
    
      @num = params.fetch("user_number").to_f
      @square_root_of_num = Math.sqrt(@num).to_f 
    render({ :template => "calculation_templates/square_root_results.html.erb"})
    end

     def calculate_square_root

   
      render({ :template => "calculation_templates/square_root.html.erb"})
     end


     def calculate_payment
      
      
      
     render({ :template => "calculation_templates/calculate_payment.html.erb"})
    end

    def payment_results

       # Extract the form data
  apr = params[:apr].to_f
 # num_years = params[:num_years].to_i
  principal = params[:principal].to_f
  
  # Convert APR to a monthly interest rate
 # r = apr / 12 / 100
  
  # Calculate the number of payments
 # n = num_years * 1..2
  
  # Calculate the payment using the formula
 # p = r * principal / (1 - (1 + r)**-n)
  
  # Render the results in the HTML template
  

      render({ :template => "calculation_templates/payment_results.html.erb"})
    end
  end
