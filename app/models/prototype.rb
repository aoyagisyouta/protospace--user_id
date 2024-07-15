class Prototype < ApplicationRecord

  has_one_attached :image
  belongs_to :user
  has_many   :comments, dependent: :destroy
  

  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :user, presence: true
  validates :image, presence: true, unless: :was_attached?

  def was_attached? 
    self.image.attached? 
  end 
end
