# frozen_string_literal: true

class Flavor < ApplicationRecord
  # TODO: connect with a frozen record class that can get all of the required prices for flavors
  # convert currency based on the user that is currently signed in saved in their settings
  def price
    rand(11)
  end
end
