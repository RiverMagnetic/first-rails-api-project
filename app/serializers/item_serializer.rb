# frozen_string_literal: true

class ItemSerializer < ActiveModel::Serializer
  attributes :id, :item_name, :description
  belongs_to :user
  
  # def item_name
  #   scope == object.user
  # end

  # def description
  #   scope == object.user
  # end
end
