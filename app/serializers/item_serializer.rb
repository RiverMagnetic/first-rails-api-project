class ItemSerializer < ActiveModel::Serializer
  attributes :id, :item_names, :descriptions, :user
end
