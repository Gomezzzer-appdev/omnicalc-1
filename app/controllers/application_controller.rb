class ApplicationController < ActionController::Base
  
     def blank_square_form

    
      render({ :template => "calculation_templates/square_form.html.erb"})
     end

     def calculate_square

      @num = params.fetch("elephant").to_f

      @square_of_num = @num ** 2

        render({ :template => "calculation_templates/square_results.html.erb"})
     end

     def calculate_random

     #    @lower = params.fetch("user_min").to_f 
     #    @upper = params.fetch("user_max").to_f 
     #    @result = rand(@lower..@upper)
       render({ :template => "calculation_templates/calculate_rand.html.erb"})
     end

     def calculate_square_root

    #   @num = params.fetch("flamingo").to_f
    #   @square_root_of_num = Math.sqrt(@num) 
      render({ :template => "calculation_templates/square_root.html.erb"})
     end



     def calculate_payment

      
     render({ :template => "calculation_templates/calculate_payment.html.erb"})
    end

    def payment_results
    
      render({ :template => "calculation_templates/payment_results.html.erb"})
    end
end
