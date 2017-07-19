class User < ApplicationRecord
    has_many :items, dependent: :destroy
    validates :user, presence: true
    validates :mail, uniqueness: true
    before_save :capitalize
    def capitalize
        user.capitalize!
    end
end
