class ItemSerializer < ActiveModel::Serializer
  attributes :id, :item_name, :description
  has_one :user
  # belongs_to :user might be better
end
