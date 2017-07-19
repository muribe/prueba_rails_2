class User < ApplicationRecord
    has_many :items
    before_save :capitalize
    def capitalize
        user.capitalize!
    end
end
