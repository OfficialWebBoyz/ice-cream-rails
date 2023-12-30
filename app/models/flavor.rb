# frozen_string_literal: true
# typed: true

class Flavor < ApplicationRecord
  has_many :flavor_category, dependent: nil
  has_many :categories, through: :flavor_category, dependent: nil

  validates :name, presence: true

  # TODO: create a method to create the sku when a new event is created
  def create_sku
    # combine date string, with flavor name combo
  end

  # TODO: connect with a frozen record class that can get all of the required prices for flavors
  # convert currency based on the user that is currently signed in saved in their settings
  def price
    rand(11)
  end
end
