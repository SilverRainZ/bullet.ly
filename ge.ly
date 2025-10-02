\version "2.24.0"

\include "etude.ly"
\include "roman-numerals.ly"

melody = {
  \key c \major
  r4 r r r8 g
  \acciaccatura d' e'8 e' e' e' e'4 g'
  f'8. g'16 f'8 e' d'4 r8 g
  d'8 d' d' d' d'4 c'8. d'16
  e'2 r4 r8 g

  e'8 e' e' e' e'4 g' % d->e
  f'8. g'16 f'8 e' d'4 r8 g
  d'4 d'8. r16 c' b a16 b8.

  c2 r4 r8 c8
}

harmony= \chords {
  \key c \major
  c1
  c2 e:m
  d2:m g
  d2:m g

  c1
  c2 e:m
  d2:m g
  d2:m g

  c2 c:7
  f1
  e2:m a:m
  d2:m g

  c2 c:7
  f1
  e2:m a:m
  d1:m
  g1:7

  r1
  c2: e:m
  d2:m g
  d2:m g

  c1
  c2: e:m
  d2:m g
  d2:m g

  %1 repeat
  c1:
  d1:m
  g1
  c2 c:7

  %2 repeat
  c1
  c2: e:m
  d2:m g
  d2:m g

  c1
  c2: e:m
  d2:m g
  d2:m g

  c1
  f2 d:m
  g1
  c1
}

#(make-etude "歌 - 闪亮的日子" #{ $melody #} #{ $harmony #} #{ c #})
