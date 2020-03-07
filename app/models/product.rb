class Product < ApplicationRecord
  validates :image_url, :description, :title, presence:true
  validates :price, numericality:{ greater_than_or_equal_to: 0.01 }
  validates :title, uniqueness:true
  validates :description, uniqueness:true
  validates :image_url, allow_blank: true, format: {
    with:
    %r{\.(gif|jpg|png)\Z}i,
    message: 'must be a URL for GIF, JPG or PNG image.'
  }
end
