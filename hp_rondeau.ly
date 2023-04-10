\version "2.22.2"
\header {
  title = "Rondeau"
  composer = "H. Purcell"
}
\relative c'
{
  \key d \minor  
  \tempo 2 = 75
  \time 3/2

  \repeat volta 2
  {
    << { d2 f a } \\ { d,2 d c } >>
    << { d'4 e8 f g(f) e d cis2\trill } \\ { b, g a } >>
    << { a''4 d,8 f a f d4 b'2 } \\ { f,,1 g2 } >>
    << { g''4 c,8( e) g e c4 a'2 } \\ { e,,1 f2 } >>
    \break
    << { f''4 bes,8(d) f d bes4 g'2 } \\ { d,2 d e } >>
    << { e'4 a,8(cis) e cis a4 f'2 } \\ { cis,1 d2  } >>
    << { e'8(f) e d cis4 f4 e8(f) e d } \\ { g,,2 a bes  } >>
    << { a'4d cis8(d) e d d2 } \\ { a,1 d2  } >>
  }
}


