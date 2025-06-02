class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :lockable, :confirmable
  
  validates :username, :password, :email, presence: true, uniqueness: true
  validates :password, length: { minimum: 4 }
end
