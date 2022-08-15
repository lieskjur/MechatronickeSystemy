using Documenter, MechatronickeSystemy
makedocs(
    sitename="Simulace a řízení mechatronických systémů",
    pages = [
        "index.md",
        "Řízené mechanické systémy" => [
            "RMS/Základní Pojmy Řízení.md",
            "Stabilita systémů" => [
                "lineárních" => "RMS/Stabilita systémů/Stabilita lineárních systémů.md",
                "diskrétních" => "RMS/Stabilita systémů/Stabilita diskrétních systémů.md",
                "podle Lyapunova" => "RMS/Stabilita systémů/Stabilita podle Lyapunova.md",
                ],
            "Optimální řízení" => [
                hide("RMS/Optimální řízení/Kritérium optimality.md"),
                "RMS/Optimální řízení/Bellmanův princip optimality.md",
                "RMS/Optimální řízení/LQR.md",
                "RMS/Optimální řízení/Pontrjaginův princip minima.md",
                "RMS/Optimální řízení/Prediktivní řízení.md",
                ],
            # "Lineární systémy v časové oblasti" => [
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
            # ],
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