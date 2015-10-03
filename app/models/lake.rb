class Lake < ActiveRecord::Base
  fuzzily_searchable :name
end
