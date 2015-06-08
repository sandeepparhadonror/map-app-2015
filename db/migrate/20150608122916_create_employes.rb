class CreateEmployes < ActiveRecord::Migration
  def change
    create_table :employes do |t|
      
      t.string   :employe_name
      t.string   :employe_gender
      t.date     :employe_dob
      t.text	 :employe_adress
      t.string   :employe_work_role
      t.date     :employe_join_date
      t.date     :employe_end_date
      t.string   :employe_deparment
      t.integer  :employe_mob_no
      t.string   :employe_vehicle_no
      t.integer  :employe_work_expriance
      t.string   :employe_picture
      t.string   :employe_email_address
      t.text     :employe_background_info

      t.timestamps
    end
  end
end
