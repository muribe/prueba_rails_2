class Item < ApplicationRecord
  belongs_to :category
  belongs_to :user, optional: true
  scope :itemsize, -> (size) { where(size: size)}
  scope :not_user, ->  { where(user: nil)}
  after_destroy :last

  def last
      category.destroy unless category.items.any?
  end

end


