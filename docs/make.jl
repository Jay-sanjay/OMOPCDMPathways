using OMOPCDMPathways
using Documenter
using DocumenterVitepress

DocMeta.setdocmeta!(OMOPCDMPathways, :DocTestSetup, :(using OMOPCDMPathways); recursive=true)

pgs=[
    "Home" => "index.md",
    "Tutorials" => "tutorials.md",
    "Api" => "api.md",
    "Contributing" => "contributing.md"
]

fmt  = DocumenterVitepress.MarkdownVitepress(
    repo="https://github.com/JuliaHealth/OMOPCDMPathways.jl",
    devbranch = "main",
    devurl = "dev",
    build_vitepress = false,
)

makedocs(;
    modules = [OMOPCDMPathways],
    authors = "Jay-sanjay <landgejay124@gmail.com>, Jacob Zelko <jacobszelko@gmail.com>, and contributors",
    repo="https://github.com/JuliaHealth/OMOPCDMPathways.jl/blob/{commit}{path}#L{line}",
    sitename = "OMOPCDMPathways.jl",
    format = fmt,
    pages= pgs,
    warnonly = true,
    draft = false,
    source = "src",
    build = "build"
)

deploydocs(;
    repo="github.com/JuliaHealth/OMOPCDMPathways.jl",
    target="build", # this is where Vitepress stores its output
    branch = "gh-pages",
    devbranch = "main",
    push_preview = true,
)
