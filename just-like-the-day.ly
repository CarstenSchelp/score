\version "2.24.2"
\header {
  title = "Just Like the Day"
  composer = "Pat Metheny"
}

changes = \chordmode {
  \set noChordSymbol = ""
  e1 e2 g2:/b e1
}
<<
\new ChordNames \changes
\new Staff <<
  \new Voice = "fingers"
    \relative {
      \voiceOne
      \clef treble
      \time 4/4
      \key e \major
      b'1~
      b2 <d g,>2
      b1~b1~b1~b1 \break
      \time 6/4 <b gis>2~<b gis>8 e, gis b <d gis,>4. cis8
      \time 4/4 b1~b1~b1~b1
    }
  \new Voice = "thumb"
    \relative { \voiceTwo e1 }
  >>
>>
