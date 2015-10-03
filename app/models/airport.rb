class Airport < ActiveRecord::Base
  fuzzily_searchable :name
end
