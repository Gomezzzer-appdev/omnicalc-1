class ApplicationController < ActionController::Base
     def blank_square_form

      @num = params.fetch("elephant")
      
      render({ :template => "calculation_templates/square_form.html.erb"})
     end

     def calculate_square

        render({ :template => "calculation_templates/square_results.html.erb"})
     end
end
