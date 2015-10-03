class City < ActiveRecord::Base
  fuzzily_searchable :name
end
