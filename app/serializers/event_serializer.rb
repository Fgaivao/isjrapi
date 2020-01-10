class EventSerializer < ActiveModel::Serializer
  attributes :title, :day, :description, :time
end
