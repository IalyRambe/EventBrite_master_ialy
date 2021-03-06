class Event < ApplicationRecord
    has_many :attendances
    has_many :users, through: :attendances
    belongs_to :admin, class_name: "User"
    validates :start_date, presence: true
    validates :duration, presence: true
    validates :title, presence: true, length: {minimum: 5, maximum: 140}
    validates :description, presence: true, length: {minimum: 20, maximum: 1000}
    validates :price, presence: true
    validates_numericality_of :price,
    :greater_than => 1.0,
    :less_than => 1000.0
    validates :location, presence: true
   
end