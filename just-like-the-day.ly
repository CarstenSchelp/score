\version "2.24.2"
\header {
  title = "Just Like the Day"
  composer = "Pat Metheny"
}
\paper {
  % increase the "#x" value for more or less space between systems
  system-system-spacing.padding = #3.5
}
\markup \box "Original is in D (drop D tuning)"
<<
\new ChordNames \chordmode {
  \set noChordSymbol = ""
  e1 r2 g2:/b e1 r r r
  e1 g2:/b e1 r r r
  e1 g2:/b d:/fis f:/g c1 r
  c1 r a1:7 f1:7+
  g1:/a r2 f1:7+ r
  e1 g:/b e r r r

  b1 d2:/fis b1 r r r
  b1 d2:/fis a c/d g1 r r r
  e1:7 c:7+ d2:/e g a4. c8:7+ r1 r
  b1 d:/fis b r r r
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
    \time 6/4 <b gis>2~<b gis>8 e, gis b <d g,>4. cis8
    \time 4/4 b1~b~b~b \break
    <b gis>2~<b gis>8 e, gis b
    \time 6/4 <d g,>4. cis8 a4. b8 c4. b8
    \time 4/4 g1~g~ \break
    g~g2. g8 a
    <b e,~>4 <b e,>8 b8~ \tuplet 3/2 { b4 a g }
    e2. g8a  \break
    \time 6/4 <b g>4 d8 [e~] e [g~] g [a~] a [b~] b [e,~]
    \time 4/4 e1~ e2~ e4. b8 \break
    \tuplet 3/2 { a'8 gis e~} e4~e b8 e8
    d2~ d4. cis8 b1~b~b~b

    \break
    \section
    \sectionLabel "[B]"
    \time 6/4 <fis' dis>2~<fis dis>8 b, dis fis <a d,>4. gis8
    \time 4/4 fis1~fis1~fis1~fis1 \break
    <fis dis>2~<fis dis>8 b, dis fis
    \time 6/4 <a d,>4. gis8 e4. fis8 gis4. fis8
    \time 4/4 d1~d1~d~d2~d8 b d e \break
    fis4 fis8 fis~ \tuplet 3/2 { fis4 e d } b2. d8 e
    \time 6/4 fis4 a8 [b~] b [d~] d [e~] e [fis~] fis [b,~]
    \time 4/4 b1~ b2~ b4. fis8 \break
    \tuplet 3/2 { e'8 dis b~ } b2 fis8 b8 a2~ a4. gis8
    fis1~fis~fis~fis~
    \section
  }
  \new Voice = "thumb"
  \relative { \voiceTwo e1 }
  >>
>>
