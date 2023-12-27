# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `ActiveSupport::TestCase`.
# Please instead update this file by running `bin/tapioca dsl ActiveSupport::TestCase`.

class ActiveSupport::TestCase
  sig { params(fixture_names: T.any(String, Symbol)).returns(T.untyped) }
  def categories(*fixture_names); end

  sig { params(fixture_names: T.any(String, Symbol)).returns(T.untyped) }
  def flavor_categories(*fixture_names); end

  sig { params(fixture_names: T.any(String, Symbol)).returns(T.untyped) }
  def flavors(*fixture_names); end
end
