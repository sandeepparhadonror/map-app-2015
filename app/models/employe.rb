class Employe < ActiveRecord::Base

attr_accessor  :f_name, :m_name, :l_name
#attr_accessible :employe_name, :employe_gender, :employe_dob, :employe_adress, :employe_work_role, 
#                :employe_join_date, :employe_end_date, :employe_deparment, :employe_mob_no, 
#                :employe_vehicle_no, :employe_work_expriance, :employe_picture, 
#                :employe_email_address, :employe_background_info

GENDER_TYPES = [ ["Male","0"], [ "Female","1" ] ]


end
