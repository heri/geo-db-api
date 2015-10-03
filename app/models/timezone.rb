class Timezone < ActiveRecord::Base
  fuzzily_searchable :name_alt
end
