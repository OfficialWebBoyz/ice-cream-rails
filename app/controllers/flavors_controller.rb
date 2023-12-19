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
    @flavors = Flavor.all
    @display_names = Flavor.all.map(&:name)
  end

  def flavor
    # handle errors
    # get allowed params
    @flavor = Flavor.find(params[:id])
  end

  def edit
    @flavor = Flavor.find(params[:id])
  end

  # not creating a remplate for this action enables me to submit the form without triggering a redirect!
  def update
    updates = params.permit(:name)
    flavor = Flavor.find(params.require(:id))
    raise unless flavor

    flash[:error] = 'Error with form submission'
    redirect_back(fallback_location: edit_flavor_path(flavor))

    return flash[:error]

    flavor.update!(**updates)

    redirect_to(flavor_path(flavor))
  end
end
