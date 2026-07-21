\version "2.24.0"

\header {
  title = "Mapa de tu piel"
    subtitle = "Arreglo para Dúo Vocal (Bolero)"
    }

    global = {
      \key a \major
        \time 4/4
          \tempo "Bolero" 4 = 80
          }

          vozPrincipal = \relative c' {
            \global
              cis4 cis cis8 d e e | cis2 b4 b |
                b4 b b8 cis d d | b2 a4 r |
                  b4 b b8 cis d fis | e2 d4 cis |
                    b4 a g8 a b cis | a2. r4 |
                    }

                    segundaVoz = \relative c' {
                      \global
                        e4 e e8 fis g g | e2 cis4 cis |
                          g'4 g' g'8 a b b | g2 e4 r |
                            g4 g g8 a b d | cis2 b4 a |
                              d,4 cis b8 cis d e | cis2. r4 |
                              }

                              letra = \lyricmode {
                                En el ma- pa de tu piel, tres lu- na- res di- vi- nos
                                  son la brú- ju- la que guí- a mis cie- gos des- ti- nos.
                                  }

                                  \score {
                                    \new ChoirStaff <<
                                        \new Staff \with { instrumentName = "Voz 1" } {
                                              \vozPrincipal
                                                  }
                                                      \addlyrics { \letra }
                                                          
                                                              \new Staff \with { instrumentName = "Voz 2" } {
                                                                    \segundaVoz
                                                                        }
                                                                            \addlyrics { \letra }
                                                                              >>
                                                                                \layout { }
                                                                                }
                                                                                