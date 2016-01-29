class LinkSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :url, :image_url, :sender
end
