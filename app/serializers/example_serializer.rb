# frozen_string_literal: true

class ExampleSerializer < ActiveModel::Serializer
  attributes :id, :text, :editable

  def editable
    scope == object.user
  end
end

# {
#   attributes: "blah",
#   id : 5,
#   text: "lorem upsum",
#   editable: false
# }
