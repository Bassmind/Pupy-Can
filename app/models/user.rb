class User < ActiveRecord::Base
  attr_accessible :email, :name, :phone
  
  validate :only_one_user, :on => :create
  validates :name, :phone, :email, presence: true

  private
  def only_one_user
  	if (User.count > 0)
  		errors[:base] << "Ya hay un usuario registrado"
  	end
  end
end
