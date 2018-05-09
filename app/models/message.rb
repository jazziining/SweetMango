class Message
  include ActiveModel::Model
  attr_accessor :name, :email, :phone_number, :services, :ideal_date_time, :note
  validates :name, :email, :services, :ideal_date_time, presence: true
end
