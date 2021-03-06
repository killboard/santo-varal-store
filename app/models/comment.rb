class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  validates :body, presence: true

# <%= @product.comments.order(rating: :desc).first %>
  scope :rating_desc, -> { order(rating: :desc) }
  scope :rating_asc, -> { order(rating: :asc) }
end
