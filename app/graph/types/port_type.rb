PortType = GraphQL::ObjectType.define do
  name "Port"
  description "A port"

  field :id,          !types.ID, "The unique ID of this port"
  field :name,        !types.String, "The name of this port"
  field :coordinates, !types.String, "Geo Coordinates of port"
end
