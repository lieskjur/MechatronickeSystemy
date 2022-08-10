import Pkg
Pkg.add("Documenter")
using Documenter
using MechatronickeSystemy
push!(LOAD_PATH,"../src/")
makedocs(
    sitename="Simulace a řízení mechatronických systémů"
)
deploydocs(
    repo = "github.com/lieskjur/MechatronickeSystemy.git",
    target = "build",
    branch = "gh-pages"
    # versions = ["stable" => "v^", "v#.#" ],
)