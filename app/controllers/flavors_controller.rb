# frozen_string_literal: true

class FlavorsController < ApplicationController
  # 1 ice cream to many categories
  # In the admin I want to be able to modify related values for categories
  CATEGORIES = %w[
    uncommon
    contains-chocolate
    vegan
    non-dairy
    fruity
    contains-nuts
    low-sugar
  ].freeze # 1:M -> Cetegory:Related_Categories

  # In the admin I should be able to edit these, add these, remove these ice cream flavors
  # Wouldn't it be cool if you could get ai to assign key words to a particular flavor based
  # on feedback/comments from customers and use that for a recommendation engine
  DISPLAY_NAMES = [].freeze

  def index
    @categories = CATEGORIES
    # TODO: paginate
    @display_names = Flavor.all.map(&:name)
  end
end
