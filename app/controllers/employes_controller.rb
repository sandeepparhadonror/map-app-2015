class EmployesController < ApplicationController

  #before_action :full_employe_name

	def index
	  @employe = Employe.all
    @user = User.all
	end
    
    def show
      @employe = Employe.find(params[:id])	
    end

    def new
      @employe = Employe.new	
    end

    def create
      @employe = Employe.new(employe_params)
      respond_to do |format|
      	if @employe.save
      	  format.html { redirect_to @employe, notice: "Employe created" }	
      	else
      	  format.html { render action: "new"}
      	end
      end	
    end

    def edit
      @employe = Employe.find(params[:id])  
    end

    def update
      @employe = Employe.find(params[:id])
      respond_to do |format|
        if @employe.update_attributes(employe_params)
          format.html { redirect_to @employe, notice: "Employe successfully updated"}
        else
          format.html { render 'edit'}
        end  
      end  
    end
	
	private

  
	def employe_params
    f_name = params[:employe][:f_name]
    m_name = params[:employe][:m_name]
    l_name = params[:employe][:l_name]
    full_name = f_name.concat(m_name).concat(l_name)
    params[:employe][:employe_name] = full_name
    
	  params.require(:employe)
	        .permit(:f_name, :m_name, :l_name, :employe_name, :employe_gender, :employe_dob, :employe_adress, :employe_work_role, 
                    :employe_join_date, :employe_end_date, :employe_deparment, :employe_mob_no, 
                    :employe_vehicle_no, :employe_work_expriance, :employe_picture, 
                    :employe_email_address, :employe_background_info)	
	end
end
