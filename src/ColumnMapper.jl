
module ColumnMapper
using Dash

const resources_path = realpath(joinpath( @__DIR__, "..", "deps"))
const version = "0.0.1"

include("jl/columnmapper.jl")

function __init__()
    DashBase.register_package(
        DashBase.ResourcePkg(
            "column_mapper",
            resources_path,
            version = version,
            [
                DashBase.Resource(
    relative_package_path = "column_mapper.min.js",
    external_url = nothing,
    dynamic = nothing,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "column_mapper.min.js.map",
    external_url = nothing,
    dynamic = true,
    async = nothing,
    type = :js
)
            ]
        )

    )
end
end
