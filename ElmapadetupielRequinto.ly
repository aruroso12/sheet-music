\version "2.24.0"

\header {
  title = "Mapa de tu piel"
    subtitle = "Requinto - Introducción (Bolero)"
    }

    global = {
      \key a \major
        \time 4/4
          \tempo "Bolero" 4 = 130
          }

          % --- MELODÍA DEL REQUINTO ---
          requintoMelodia = \relative c'' {
            \global
              % Frase 1 (0:00 - 0:02)
                cis4 e8 fis gis a gis fis | e4 d8 cis b2 |
                  
                    % Frase 2 (0:02 - 0:05)
                      b4 d8 e fis gis fis e | d4 cis8 b a2 \bar "|."
                      }

                      \score {
                        <<
                            % Pentagrama con notas
                                \new Staff \with { 
                                      instrumentName = "Requinto" 
                                            midiInstrument = "acoustic guitar (nylon)"
                                                } {
                                                      \requintoMelodia
                                                          }

                                                              % Tablatura para guitarra
                                                                  \new TabStaff \with {
                                                                        stringTunings = #guitar-tuning
                                                                            } {
                                                                                  \requintoMelodia
                                                                                      }
                                                                                        >>

                                                                                          \layout { }
                                                                                            \midi { } % Activa el reproductor y la descarga MIDI
                                                                                            }
