class EmployesController < ApplicationController
	def index
	  @employe = Employe.all
	end
    

    def new
      @employe = Employe.new	
    end

    def create
      @employe = Employe.new(employe_params)	
    end
	
	private

	def employe_params
	  params.require(:employe)
	        .permit(:employe_name, :employe_gender, :employe_dob, :employe_adress, :employe_work_role, 
                    :employe_join_date, :employe_end_date, :employe_deparment, :employe_mob_no, 
                    :employe_vehicle_no, :employe_work_expriance, :employe_picture, 
                    :employe_email_address, :employe_background_info)	
	end
end
