import Pkg
Pkg.add("Documenter")
using Documenter
using MechatronickeSystemy
push!(LOAD_PATH,"../src/")
makedocs(
    sitename="MechatronickeSystemy"
)
deploydocs(
    repo = "github.com/lieskjur/MechatronickeSystemy.git",
    target = "build",
    branch = "gh-pages"
    # versions = ["stable" => "v^", "v#.#" ],
)