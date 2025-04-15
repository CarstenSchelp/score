\version "2.24.2"
\header {
  title = "Just Like the Day"
  composer = "Pat Metheny"
}

<<
\new ChordNames \chordmode {
  \set noChordSymbol = ""
  e1 r2 g2:/b e1 r1 r1 r1
  e1 g2:/b e1 r1 r1 r1
  r1
}
\new Staff <<
  \new Voice = "fingers"
  \relative {
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \numericTimeSignature
    \voiceOne
    \clef treble
    \time 4/4
    % \key c \major
    \sectionLabel "Intro"
    b'1~
    b2 <d g,>2
    b1~b~b~b \break
    \section
    \sectionLabel "[A]"
    \time 6/4 <b gis>2~<b gis>8 e, gis b <d gis,>4. cis8
    \time 4/4 b1~b~b~b \break
    <b gis>2~<b gis>8 e, gis b
    \time 6/4 <d gis,>4. cis8 a4. b8 c4. b8
    \time 4/4 g1~g~ \break
    g~g2. g8 a
    <b e,~>4 <b e,>8 b8~ \tuplet 3/2 { b4 a g }
    e2. g8a  \break
    \time 6/4 <b g>4 d8 [e~] e [g~] g [a~] a [b~] b [e,~]
    \time 4/4 e1~ e2~ e4. b8 \break
    \tuplet 3/2 { a'8 gis e~} e4~e b8 e8
    d2 d4. cis8 b1~b~b~b

    \break
    \section
    \sectionLabel "[B]"
    \time 6/4 <fis' dis>2~<fis dis>8 b, dis fis <a dis,>4. gis8
    \time 4/4 fis1~fis1~fis1~fis1 \break
    <fis dis>2~<fis dis>8 b, dis fis
    \time 6/4 <a dis,>4. gis8 e4. fis8 gis4. fis8
    \time 4/4 d1~d1~d2~d8 b dis e \break
    fis4 fis8 fis~ \tuplet 3/2 { fis4 e d } b2. d8 e
    \time 6/4 fis4 a8 [b~] b [d~] d [e~] e [fis~] fis [b,~]
    \time 4/4 b1~ b2~ b4. fis8 \break
    \tuplet 3/2 { e'8 dis b~ } b2 fis8 b8 b2~ b4. gis8
    fis1~fis~fis~fis~
    \section
  }
  \new Voice = "thumb"
  \relative { \voiceTwo e1 }
  >>
>>
