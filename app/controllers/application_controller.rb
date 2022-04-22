class ApplicationController < ActionController::Base
    respond_to :html, :json
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    
    # def after_sign_up_path_for(resource)
    #     'home/index' # Or :prefix_to_your_route
    # end

    def after_sign_in_path_for(resource)
        '/vehicles' # Or :prefix_to_your_route
    end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :address, :contact_no, :email, :password, :password_confirmation])
  end

end


# devise_parameter_sanitizer.for(:sign_up) { |u| params.require(u)(:firstname, :designation_id, :middlename, :previous_experiance_year, :previous_experiance_month, :lastname, :email, :username, :password, :password_confirmation, :previous_experiance, :empid, :dob, :timezone, :doj, :gender, :education, :comments, :locked, :deactivated, :reason, :phone, :deactivated_date, :image) }

# params.require(:user)