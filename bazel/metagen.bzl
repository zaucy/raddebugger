def _metagen(ctx):
    output_files = []
    args = ctx.actions.args()

    for src in ctx.files.srcs:
        output_files

    return [
        DefaultInfo(files = depset([output_files])),
    ]

metagen = rule(
    implementation = _metagen,
    attrs = {
        "srcs": attr.label_list(
            allow_files = [".mdesk"],
            mandatory = True,
        ),
    },
)
