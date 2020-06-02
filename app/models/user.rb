class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    enum kind: [:employee, :owner, :accountant]
    enum status: [:active, :inactive]
    has_many :receipts
    has_one :company
end
