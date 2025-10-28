%《吉他新思维》P23

\version "2.24.0"

\include "etude.ly"
\include "roman-numerals.ly"

common = {
  \key c \major
  \time 4/4
  \tempo 4=70
}

melody = \fixed c' {
  \common

  c4 c g g
  a4 a g2
  f4 f e e
  d4 d c2
  g4 g f f
  \break
  e4 e d2
  g4 g f f
  e4 e d2
  c4 c g g
  a4 a g2
}

harmony= \new ChordNames{
  \set chordChanges = ##t
  \chordmode {
    \common

    c1
    f2 c
    g2:7 c
    g2:7 c
    c2 g
    c2 g
    c2 g
    c2 g
    c1
    f2 c
  }
}

#(make-etude "小星星（节选）" #{ $melody #} #{ $harmony #} #{ c #})
