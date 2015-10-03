class Country < ActiveRecord::Base
  fuzzily_searchable :formal
end
