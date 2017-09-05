class Event < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :themes

  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :starts_at, presence: true
  validates :ends_at, presence: true#, if: :one_day_after?

  # def one_day_after?
  #   :ends_at >= :starts_at += 1
  # end

end
