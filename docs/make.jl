using Documenter, MechatronickeSystemy
makedocs(
    sitename="Simulace a řízení mechatronických systémů",
    pages = [
        "index.md",
        "Řízené mechanické systémy" => [
            "RMS/Základní Pojmy Řízení.md",
            # "Lineární systémy v časové oblasti" => [
            "RMS/Stabilita lineárních systémů.md",
            "RMS/Říditelnost lineárního systému.md",
            "RMS/Pozorovatelnost lineárního systému.md",
            "RMS/Výstupní zpětná vazba.md",
            "RMS/Stavový Pozorovatel.md",
            # ],
            # "Lineární systémy ve frekvenční oblasti \Rightarrow ["
            "RMS/Převod stavového popisu systému na přenosový popis.md",
            # "Bodeho Diagram.md"
            # ],
            # "Diskrétní lineární systémy" => [
            "RMS/Diskretizace Lineárních Systémů.md",
            "RMS/Prediktivní řízení.md",
            # ],
            "Optimální řízení" => [
                hide("RMS/Optimální řízení/Kritérium optimality.md"),
                "RMS/Optimální řízení/Bellmanův princip optimality.md",
                "RMS/Optimální řízení/LQR.md",
                "RMS/Optimální řízení/Pontrjaginův princip minima.md",
                ]
            ],
        "Řízené aktivní struktury" => [
            "LAC vs. HAC" => "RAS/LAC vs HAC.md",
            "RAS/Typy aktivních a poloaktivních aktuátorů.md"
            ],
        "Simulace mechatronických systémů" => [
            ],
        "Syntéza a optimalizace mechanických systémů" => [
            ]
        ]
)

# julia -e 'using LiveServer; serve(dir="docs/build")'