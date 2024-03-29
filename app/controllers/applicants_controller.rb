class ApplicantsController < ApplicationController
    before_action :signed_in?, only: [:list]
    
    def list 
        @applicant= Applicant.all
    end
    
    def show 
        @pplicant=Applicant.all
    end 
    
    def new 
        @applicant = Applicant.new(applicant_params)
    end 
    
    def create 
        @applicant = Applicant.new(applicant_params) 
        if @applicant.save 
            redirect_to success_message_path
        else 
          render 'new' 
        end
    end 
    
    def edit 
    end 
    
    def update 
    end 
    
    def delete 
    end 
    
    def applicant_params 
        params.permit(:first_name,:last_name,:email,:phone,:gender,:status,:date_of_birth) 
    end

end
