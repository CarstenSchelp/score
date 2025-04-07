\version "2.22.2"
\header {
  title = "Musette"
  composer = "J. S. Bach"
}
% TODO: dynamics
\score {
  \new Staff <<
    \new Voice = "ima" {
      \relative {
        \voiceOne
        \clef treble
          \time 4/4
          \key c \major
          {
            g''4~ <g e> f8 e <d g> c
            g'4~ <g e> f8 e <d g> c
            e8( f g4) f_. e_.
            d_. g_. e_. c_.
            \break
            g'4~ <g e c> f8 e <d g> c
            g'4~ <g e c> f8 e <d g> c
            e8( f g4) f_. e_.
            d_. g_. c,2
            \bar "||" \break
            \repeat volta 2 {
            \bar ".|:"
            b8( c <g d'>4) b8( c <g d'>4)
            <b g'> <b d> <b~ d~> <g b d>
            <b g'> <g b d> <b g'> <g b d>
            c8 b a g a4 d,
            \break
            d' <cis fis,> r <c~ fis,>
            c  <b g> g' <fis a,>
            d <cis fis,> r <c~ fis,>
            c <b g> g' <fis a,> 
            \break
            <d fis,>8 cis <b g> cis <d fis,>cis <b g> cis
            <d fis,>4 fis, g <c e,>
            b8( c) <d a>4 g, r
            r1
            \break
            g'4~ <g e> f8 e <d g> c
            g'4~ <g e> f8 e <d g> c
            e8( f g4) f_. e_.
            d_. g_. e_. c_.
            \break
            g'4~ <g e c> f8 e <d g> c
            g'4~ <g e c> f8 e <d g> c
            e8( f g4) f_. e_.
            d_. g_. c,2
            }
          }
      }
    }
    \new Voice = "p"
    \relative {
        \voiceTwo
        c'4 c' c, r
        c4 c' c, r
        e8( f g4) f^. e^.
        d^. g^. e^. c^.
        
        c4 c' c, r
        c4 c' c, r
        e8( f g4) f^. e^.
        d^. g^. c,2

        g4 r g r
        g r g r
        g r g r
        g b d d

        d r d r
        d r d r
        d r d r
        d r d r

        d r d r
        d c b c
        d2  g,4 c
        b8( c d4) g,2

        c4 c' c, r
        c4 c' c, r
        e8( f g4) f^. e^.
        d^. g^. e^. c^.
        
        c4 c' c, r
        c4 c' c, r
        e8( f g4) f^. e^.
        d^. g^. c,2
    }
  >>
}
