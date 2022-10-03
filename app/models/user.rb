class User < ApplicationRecord

    # validation
    validates :username, presence: true, uniqueness: true

    #Relationship
    has_many :recipes


    # Hash password
    has_secure_password

end
