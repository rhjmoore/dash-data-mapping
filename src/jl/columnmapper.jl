# AUTO GENERATED FILE - DO NOT EDIT

export columnmapper

"""
    columnmapper(;kwargs...)

A ColumnMapper component.
ExampleComponent is an example component.
It takes a property, `label`, and
displays it.
It renders an input with the property `value`
which is editable by the user.
Keyword arguments:
- `id` (String; optional): The ID used to identify this component in Dash callbacks.
- `columns` (Array; required): A list / array of the attributes of the fields in the source and target tables
- `label` (String; required): A label that will be printed when this component is rendered.
- `mappingData` (Array; optional): An optional list of mappings to start with between source and target
- `sourceData` (Dict; required): A list / array of the columns in the source table
- `targetData` (Dict; required): A list / array of the columns in the target table
- `value` (String; optional): The value displayed in the input.
"""
function columnmapper(; kwargs...)
        available_props = Symbol[:id, :columns, :label, :mappingData, :sourceData, :targetData, :value]
        wild_props = Symbol[]
        return Component("columnmapper", "ColumnMapper", "column_mapper", available_props, wild_props; kwargs...)
end

