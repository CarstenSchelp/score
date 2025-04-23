\version "2.24.2"
\header {
  title = "She Caught the Katy"
  composer = "Taj Mahal"
}
\paper {
  % increase the "#x" value for more or less space between systems
  system-system-spacing.padding = #3.5
}
\markup \box "Original is in Bb"
<<
\new ChordNames \chordmode {
  \set noChordSymbol = ""
  % intro
  a1:7 r
  a:7 r r r 
  a:7 r d a2 e2:7
  % 1st verse
  a1:7 d:7 a:7 r
  a:7 d:7 a:7 r
  a:7 r d:7 dis:m7.5-
  a:7 e:7 a:7 r 
  % 2nd verse
  a1:7 d:7 a:7 r
  a:7 d:7 a:7 r
  a:7 r d:7 dis:m7.5-
  a:7 e:7 a:7 r
  % bridge/solo
  d:7 r a:7 r
  g:7 r e:7 r
  a:7 e:7 a:7 r
  % 3rd verse (still solo)
  a1:7 d:7 a:7 r
  a:7 d:7 a:7 r
  a:7 r d:7 dis:m7.5-
  a:7 e:7 a:7 r
  % original has 4th verse ...
  % outro
}
\new Staff <<
  \new Voice = "fingers"
  \relative {
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \numericTimeSignature
    \voiceOne
    \clef treble
    \time 4/4
    \key a \major
    \sectionLabel "INTRO"
    r1 r \break
    r r r r \break
    r r r r \break
    \break
    \section
    \sectionLabel "[1st verse]"
    r1 r r r \break
    r r r r \break
    r r r r \break
    r r r r \break

    \break
    \section
    \sectionLabel "[2nd verse]"
    r1 r r r \break
    r r r r \break
    r r r r \break
    r r r r \break
  
      \break
    \section
    \sectionLabel "[bridge]"
    r1 r r r \break
    r r r r \break
    r r r r \break

    \break
    \section
    \sectionLabel "[3rd verse]"
    r1 r r r \break
    r r r r \break
    r r r r \break
    r r r r \break

    \section

    % outro?
  }
  \new Voice = "thumb"
  \relative {
    \voiceTwo
    % intro
    r1 r
    r r r r
    r r r r
    % 1st
    r1 r r r
    r r r r
    r r r r
    r r r r
    % 2nd
    r1 r r r
    r r r r
    r r r r
    r r r r
    % bridge
    r1 r r r
    r r r r
    r r r r
    % 3rd
    r1 r r r
    r r r r
    r r r r
    r r r r
    % outro?
  }
  >>
>>
