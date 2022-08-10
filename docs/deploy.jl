import Pkg
Pkg.add("Documenter")
include("docs/make.jl")
deploydocs(
    repo = "github.com/lieskjur/MechatronickeSystemy.git",
    target = "build",
    branch = "gh-pages"
    # versions = ["stable" => "v^", "v#.#" ],
)