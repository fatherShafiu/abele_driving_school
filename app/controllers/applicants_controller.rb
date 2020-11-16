class ApplicantsController < ApplicationController
    
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
            flash[:success] = "food added to cart!" 
            redirect_to list_path
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
