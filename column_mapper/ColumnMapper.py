# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class ColumnMapper(Component):
    """A ColumnMapper component.
ExampleComponent is an example component.
It takes a property, `label`, and
displays it.
It renders an input with the property `value`
which is editable by the user.

Keyword arguments:

- id (string; optional):
    The ID used to identify this component in Dash callbacks.

- columns (list; required):
    A list / array of the attributes of the fields in the source and
    target tables.

- label (string; required):
    A label that will be printed when this component is rendered.

- mappingData (list; optional):
    An optional list of mappings to start with between source and
    target.

- sourceData (dict; required):
    A list / array of the columns in the source table.

- targetData (dict; required):
    A list / array of the columns in the target table.

- value (string; optional):
    The value displayed in the input."""
    _children_props = []
    _base_nodes = ['children']
    _namespace = 'column_mapper'
    _type = 'ColumnMapper'
    @_explicitize_args
    def __init__(self, id=Component.UNDEFINED, label=Component.REQUIRED, value=Component.UNDEFINED, columns=Component.REQUIRED, sourceData=Component.REQUIRED, targetData=Component.REQUIRED, mappingData=Component.UNDEFINED, **kwargs):
        self._prop_names = ['id', 'columns', 'label', 'mappingData', 'sourceData', 'targetData', 'value']
        self._valid_wildcard_attributes =            []
        self.available_properties = ['id', 'columns', 'label', 'mappingData', 'sourceData', 'targetData', 'value']
        self.available_wildcard_properties =            []
        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs and excess named props
        args = {k: _locals[k] for k in _explicit_args if k != 'children'}
        for k in ['columns', 'label', 'sourceData', 'targetData']:
            if k not in args:
                raise TypeError(
                    'Required argument `' + k + '` was not specified.')
        super(ColumnMapper, self).__init__(**args)
