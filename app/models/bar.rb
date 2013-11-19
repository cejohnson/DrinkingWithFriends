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
    address.gsub(' ', '+') + '+' + city + '%2C+' + state + '+' + zip
  end
end
