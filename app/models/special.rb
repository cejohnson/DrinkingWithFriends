class Special
  include Mongoid::Document

  field :name, :type => String
  field :description, :type => String
  field :requiredUsers, :type => Integer

  belongs_to :bar

  @@sortType = nil

  def self.sort(parameter)
    if parameter
      @@sortType = parameter
      performSort(parameter)
    elsif @@sortType != nil
      performSort(@@sortType)
    else
      Special.all
    end
  end

  private
  def self.performSort(parameter)
    specials = Set.new
    specials = Special.all
    if parameter == "alpha"
      specials.sort_by { |x| x.bar[:name] }
    elsif parameter == "reversealpha"
      specials.sort_by { |x| x.bar[:name] }.reverse
    elsif parameter == "closestCompletion"
      specials.sort_by { |x| (1.0 * x.bar[:numberOfUsers] / x[:requiredUsers]) }.reverse
    elsif parameter ==  "farthestCompletion"
      specials.sort_by { |x| (1.0 * x.bar[:numberOfUsers] / x[:requiredUsers]) }
    elsif parameter == "closest"
      specials.sort_by { |x| x.bar[:distance] }
    else
      specials.sort_by { |x| x.bar[:distance] }.reverse
    end
  end
end
