class ApplicationController < ActionController::Base
    def after_sign_up_path_for(resource)
        '/home/index' # Or :prefix_to_your_route
    end

    def after_sign_in_path_for(resource)
        '/vehicles' # Or :prefix_to_your_route
    end
end
