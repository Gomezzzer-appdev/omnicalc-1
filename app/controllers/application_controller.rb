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


     def calculate_payment_form
   
      
      
     render({ :template => "calculation_templates/calculate_payment.html.erb"})
    end

    def calculate_payment_results


      apr = params[:apr].to_f / 100.0 / 12.0 # Convert to monthly rate
      num_years = params[:num_years].to_i
      principal = params[:principal].to_f

     
  
      # Calculate the payment using the formula
      num_periods = num_years * 12
      numerator = apr * principal
      denominator = 1 - (1 + apr)**(-num_periods)
      payment = numerator / denominator
  
      # Save the results as instance variables for the view
      @apr = params[:apr].to_f
      @num_years = num_years
      @principal = principal
      @payment = payment.round(2)

      @apr_formatted = @apr.to_s(:percentage, { :precision => 4 } )
    
   
  
      render({ :template => "calculation_templates/payment_results.html.erb"})
    end 
  end
