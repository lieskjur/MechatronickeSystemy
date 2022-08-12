using Documenter, MechatronickeSystemy
makedocs(
    sitename="Simulace a řízení mechatronických systémů",
    pages = [
        "index.md",
        "Základní Pojmy Řízení.md",
            "Stabilita lineárních systémů.md",
            "Říditelnost lineárního systému.md",
            "Pozorovatelnost lineárního systému.md",
            "Výstupní zpětná vazba.md",
            "Stavový Pozorovatel.md",
            "Převod stavového popisu systému na přenosový popis.md",
            "Diskretizace Lineárních Systémů.md",
            "Prediktivní řízení.md",
            "Kritérium Optimality.md",
            "Pontrjaginův princip maxima.md",
            "Algebraické Riccatiho Rovnice.md",
        ]
)

# julia -e 'using LiveServer; serve(dir="docs/build")'