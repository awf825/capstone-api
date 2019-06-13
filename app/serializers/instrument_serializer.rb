class InstrumentSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :sale, :rent, :price, :rate, :contact, :user_id
end
