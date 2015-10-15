CityType = GraphQL::ObjectType.define do
  name "City"
  description "A city"

  field :id,          !types.ID, "The unique ID of this city"
  field :name,        !types.String, "The name of this city"
  field :coordinates, !types.String, "Geo Coordinates of city"
end
