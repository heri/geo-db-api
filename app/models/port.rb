class Port < ActiveRecord::Base
  fuzzily_searchable :name
end
