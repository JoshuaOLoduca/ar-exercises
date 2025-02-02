class Employee < ActiveRecord::Base
  belongs_to :store
  validates :store, absence: false
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, presence: true, numericality: true

  validate :hourly_rate, :in_range
  validates_associated :store

  def in_range
    wage = hourly_rate.to_i
    errors.add(:hourly_rate, 'Must be between 40 and 200') unless wage >= 40 && wage <= 200
  end
end
