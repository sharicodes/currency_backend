class TripSerializer < ActiveModel::Serializer
  attributes :id, :trip_name, :currency_one,  :currency_two, :currency_three
  belongs_to :user
end
