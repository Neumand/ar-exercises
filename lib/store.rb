class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {
    only_integer: true,
    greater_than: 0
  }
  validate :has_apparel?

  def has_apparel?
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "must be carried or")
      errors.add(:womens_apparel, "must be carried")
    end
  end
end
