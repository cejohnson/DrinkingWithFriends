class Bar
  include Mongoid::Document

  field :name, :type => String
  field :numberOfUsers, :type => Integer

  field :address, :type => String
  field :city, :type => String
  field :state, :type => String
  field :zip, :type => String

  has_one :special

  def getNavigationAddress
    #Replace spaces in address with +'s, then add to the rest with plusses and return
    return address
  end
end
