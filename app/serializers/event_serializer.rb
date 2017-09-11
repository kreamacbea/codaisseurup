class EventSerializer < ActiveModel::Serializer
  attributes :name, :description, :location, :capacity, :includes_food, :includes_drinks, :starts_at, :ends_at

  has_many :registrations
end
