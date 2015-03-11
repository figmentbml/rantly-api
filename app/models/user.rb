class User < ActiveRecord::Base

  has_many :rants
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: {case_sensitive: false}
  #has_secure_password

end
