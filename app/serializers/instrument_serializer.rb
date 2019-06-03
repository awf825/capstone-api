class InstrumentSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :sale, :rent, :price, :rate, :user_id
end
