# frozen_string_literal: true

require 'test_helper'

class FlavorsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get flavors_index_url
    assert_response :success
  end
end
