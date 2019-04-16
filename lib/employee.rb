class Employee < ActiveRecord::Base
  belongs_to :store
  validates :store_id, presence: true
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 40,
    less_than_or_equal_to: 200 
  }
  
  before_create :generate_password

  def valid_rate?
    hourly_rate >= 40 && hourly_rate <= 200
  end

  private
  def generate_password
    alphabet_array = [*'a'..'z', *'A'..'Z', *'0'..'9']
    self.password = alphabet_array.sample(8).join('')
  end
  
end
