class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: true
  # validates :annual_revenue, comparison: { greater_than_or_equal_to: 0 }

  validate :annual_revenue, :greater_than
  validate :mens_apparel, :must_have_one
  validate :womens_apparel, :must_have_one

  before_destroy :stop_destroy

  def stop_destroy
    if employees.count.positive?
      errors.add(:base, :undestroyable)
      false
    end
  end

  def must_have_one
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, 'One of these must be set to true')
      errors.add(:womens_apparel, 'One of these must be set to true')
    end
  end

  def greater_than
    errors.add(:annual_revenue, 'Must be 0 or greater') if annual_revenue.to_i.negative?
  end
end
