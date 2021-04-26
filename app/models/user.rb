class User < ApplicationRecord
    has_secure_password
    
    has_many :bets 
    has_many :games, through: :bets 

    validates :username, presence: true, full_name: true
end
