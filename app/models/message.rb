class Message
  include Mongoid::Document

  field :text, :type => String
  field :date, :type => Time, default: ->{ Time.now }

  def self.sort
    messages = Set.new
    messages = Message.all
    messages.sort_by { |x| x[:date] }.reverse
  end
end
