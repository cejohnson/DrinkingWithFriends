class Special
  include Mongoid::Document

  field :name, :type => String
  field :description, :type => String
  field :requiredUsers, :type => Integer

  belongs_to :bar
end
