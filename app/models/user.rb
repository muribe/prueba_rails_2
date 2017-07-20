class User < ApplicationRecord
    has_many :items, dependent: :destroy
    validates :name, presence: true
    validates :mail, uniqueness: true
    before_save :capitalize
    def capitalize
        name.capitalize!
    end
end
