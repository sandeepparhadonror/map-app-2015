class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  # this is in concern for observer purpose and other fnctinality
  include UserEmailFunctinality

  has_many :locations 
  
  devise :database_authenticatable, :registerable, :timeoutable,
         :recoverable, :rememberable, :trackable, :validatable

  def timeout_in
    100.seconds      	
  end

end
