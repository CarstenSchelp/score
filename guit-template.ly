\version "2.24.2"
\header {
  title = "Title of the Tune"
  composer = "Composer"
}
\paper {
  % increase the "#x" value for more or less space between systems
  system-system-spacing.padding = #3.5
}
\markup \box "Remarks go here"
<<
\new ChordNames \chordmode {
  \set noChordSymbol = ""
  g1
  a1
  b1
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
    g'1
    \break
    \section
    \sectionLabel "[A]"
    a1

    \break
    \section
    \sectionLabel "[B]"
    b1

    \section
  }
  \new Voice = "thumb"
  \relative {
    \voiceTwo
    g1
    a1
    b1
  }
  >>
>>
