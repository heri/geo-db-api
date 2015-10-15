AirportType = GraphQL::ObjectType.define do
  name "Airport"
  description "An Airport"

  field :id,          !types.ID, "The unique ID of this airport"
  field :name,        !types.String, "The name of this airport"
  field :coordinates, !types.String, "Geo Coordinates of this airport"
  field :iata_code,   !types.String, "IATA airport code"
end
