# frozen_string_literal: true
# typed: true

class FlavorsController < ApplicationController
  # after_action -> { flash.discard }

  # In the admin I should be able to edit these, add these, remove these ice cream flavors
  # Wouldn't it be cool if you could get ai to assign key words to a particular flavor based
  # on feedback/comments from customers and use that for a recommendation engine

  def index
    @categories = Category.all.map(&:name)
    # TODO: paginate
    @flavors = Flavor.all
    @display_names = Flavor.all.map(&:name)
    # TODO: handle filters on the model to only return filtered flavors
    @filters = {
      categories: params.fetch(:categories, [])
    }
  end

  def show
    # handle errors
    # get allowed params
    @flavor = Flavor.find(id)
  end

  def edit
    @flavor = Flavor.find(id)
  end

  # not creating a template for this action enables me to submit the form without triggering a redirect!
  def update
    @flavor = Flavor.find(id)
    raise unless @flavor

    updates = params.permit(:name)
    unless @flavor.update(updates)
      flash[:error] = handle_errors(@flavor)
      render :edit, status: :unprocessable_entity
    end

    redirect_to @flavor if @flavor.save
  end

  private

  sig { params(flavor: Flavor).returns(T.nilable(String)) }
  def handle_errors(flavor)
    if flavor.errors.size == 1
      flavor.errors.full_messages[0]
    else
      'Error with form submission'
    end
  end

  sig { returns(String) }
  def id
    params.require(:id)
  end
end
