class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token 
  before_action :configure_permitted_parameters, if: :devise_controller?
  
    def after_sign_in_path_for(resource) 
       '/mainpage/main'
    end 


    def after_sign_out_path_for(resource_or_scope) 
     '/mainpage/outro'
    end 
    
     def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
     end
    
end
