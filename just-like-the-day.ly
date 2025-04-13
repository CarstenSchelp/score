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
  \new Voice = "ima"
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
  \new Voice= "p"
    \relative { \voiceTwo e1 }
  >>
>>
% piece = {
%   \new Voice = "ima" \relative {
%     \voiceOne
%     \clef treble
%     \time 4/4
%     \key e \major
%     b'1~
%     b2 <d g,>2
%     b1~b1~b1~b1 \break
%     \time 6/4 <b gis>2~<b gis>8 e, gis b <d gis,>4. cis8
%     \time 4/4 b1~b1~b1~b1
%   }

%   \new Voice = "p" \relative {
%     \voiceTwo
%       e1
%   }
% }


% <<
%   % \chords {
%   %   \set noChordSymbol = ""
%   %   e1 e2 g2:/b e1
%   % }
%   {
%     \piece
%   }
% >>


% \score {
%   \new Staff <<
%     \chords {
%       \set noChordSymbol = ""
%       e1 e2 g2:/b e1
%     }
%     \new Voice = "ima" {
%       \relative {
%       \voiceOne
%       \clef treble
%         \time 4/4
%         \key e \major
%         {
%           b'1~
%           b2 <d g,>2
%           b1~b1~b1~b1 \break
%           \time 6/4 <b gis>2~<b gis>8 e, gis b <d gis,>4. cis8
%           \time 4/4 b1~b1~b1~b1

%           \break
%           g'4~ <g e> f8 e <d g> c
%           e8( f g4) f_. e_.
%           \break
%           g'4~ <g e c> f8 e <d g> c
%           e8( f g4) f_. e_.
%           \bar "||" \break
%           \repeat volta 2 {
%           \bar ".|:"
%           b8( c <g d'>4) b8( c <g d'>4)
%           <b g'> <b d> <b~ d~> <g b d>
%           \break
%           }
%         }
%       }
%     }
%     \new Voice = "p"
%     \relative {
%         \voiceTwo
%     }
%   >>
% }
