% Auto-generated: do not edit by hand
\name{columnMapper}

\alias{columnMapper}

\title{ColumnMapper component}

\description{
ExampleComponent is an example component. It takes a property, `label`, and displays it. It renders an input with the property `value` which is editable by the user.
}

\usage{
columnMapper(id=NULL, columns=NULL, label=NULL, mappingData=NULL,
sourceData=NULL, targetData=NULL, value=NULL)
}

\arguments{
\item{id}{Character. The ID used to identify this component in Dash callbacks.}

\item{columns}{Unnamed list. A list / array of the attributes of the fields in the source and target tables}

\item{label}{Character. A label that will be printed when this component is rendered.}

\item{mappingData}{Unnamed list. An optional list of mappings to start with between source and target}

\item{sourceData}{Named list. A list / array of the columns in the source table}

\item{targetData}{Named list. A list / array of the columns in the target table}

\item{value}{Character. The value displayed in the input.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

