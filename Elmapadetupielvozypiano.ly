\version "2.24.0"

\header {
  title = "Mapa de tu piel"
    subtitle = "Arreglo para Dúo Vocal y Acompañamiento de Piano (Bolero)"
    }

    global = {
      \key a \major
        \time 4/4
          \tempo "Bolero" 4 = 80
          }

          % --- VOCES ---
          vozPrincipal = \relative c' {
            \global
              cis4 cis cis8 d e e | cis2 b4 b |
                b4 b b8 cis d d | b2 a4 r |
                  b4 b b8 cis d fis | e2 d4 cis |
                    b4 a gis8 a b cis | a2. r4 |
                    }

                    segundaVoz = \relative c' {
                      \global
                        e4 e e8 fis gis gis | e2 cis4 cis |
                          gis'4 gis gis8 a b b | gis2 e4 r |
                            gis4 gis gis8 a b d | cis2 b4 a |
                              d,4 cis b8 cis d e | cis2. r4 |
                              }

                              letra = \lyricmode {
                                En el ma- pa de tu piel, tres lu- na- res di- vi- nos
                                  son la brú- ju- la que guí- a mis cie- gos des- ti- nos.
                                  }

                                  % --- PIANO ---
                                  pianoDerecha = \relative c' {
                                    \global
                                      <cis e a>4 <cis e a> <cis e a> <cis e a> | <d e gis> <d e gis> <d e gis> <d e gis> |
                                        <d e gis>4 <d e gis> <d e gis> <d e gis> | <cis e a> <cis e a> <cis e a> r |
                                          <cis e a>4 <cis e a> <cis g' a> <cis g' a> | <d fis a> <d fis a> <d fis a> <d fis a> |
                                            <cis e a>4 <cis e a> <d e gis> <d e gis> | <cis e a>2. r4 |
                                            }

                                            pianoIzquierda = \relative c {
                                              \global
                                                \clef bass
                                                  a4 e a e | e b' e, b' |
                                                    e,4 b' e, b' | a e a r |
                                                      a4 e a a | d, a' d, a' |
                                                        a4 e e e | a2. r4 |
                                                        }

                                                        \score {
                                                          <<
                                                              % Dúo Vocal
                                                                  \new ChoirStaff <<
                                                                        \new Staff \with { instrumentName = "Voz 1" } { \vozPrincipal }
                                                                              \addlyrics { \letra }
                                                                                    
                                                                                          \new Staff \with { instrumentName = "Voz 2" } { \segundaVoz }
                                                                                                \addlyrics { \letra }
                                                                                                    >>

                                                                                                        % Acompañamiento de Piano
                                                                                                            \new PianoStaff \with { instrumentName = "Piano" } <<
                                                                                                                  \new Staff = "derecha" { \pianoDerecha }
                                                                                                                        \new Staff = "izquierda" { \pianoIzquierda }
                                                                                                                            >>
                                                                                                                              >>
                                                                                                                                
                                                                                                                                  \layout { }
                                                                                                                                    \midi { }
                                                                                                                                    }
                                                                                                                                    