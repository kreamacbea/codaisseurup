class Event < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :themes

  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  # validates :starts_at, presence: true
  # validates :ends_at, presence: true

  def bargain?
    price < 30
  end

  def self.order_by_price
    order :price
  end

  def self.order_by_name
    order(name: :asc)
  end

  scope :published, -> { where(:published == true) }

  has_many :photos
  has_many :registrations, dependent: :destroy
  has_many :guests, through: :registrations, source: :user
end
