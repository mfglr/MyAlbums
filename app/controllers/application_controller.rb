class ApplicationController < ActionController::Base
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
      
    private
        def record_not_found
            redirect_to "/404"
        end
end
