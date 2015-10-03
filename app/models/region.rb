class Region < ActiveRecord::Base
  fuzzily_searchable :name
end
