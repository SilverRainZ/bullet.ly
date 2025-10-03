\version "2.24.0"

\include "etude.ly"
\include "roman-numerals.ly"

common = {
  \key c \major
  \time 4/4
}

interlude = \fixed c' {
  d8 e4 g
  f8 g f e d c \acciaccatura{b, c} b,8 a,8
  \acciaccatura{g,} b,8 g \acciaccatura{b,} a, f \acciaccatura{a,} g, e f, d
  c2 r4
}

melody = \fixed c' {
  \common

  % prelude
  %1

  % vocal

  %4
  r4 r r r8 g,
  \acciaccatura{d} e8 e e e e4 g
  f8. (g16 f8 e) d4 r8 g,
  \acciaccatura{c} d d8 d d d d4 c8. d16
  e'2 r4 r8 g,

  %9
  \acciaccatura{d} e8 e e e e4 g
  f8. (g16 f8 e) d4 r8 g,
  \acciaccatura{c} d4 d8. r16 c8 b, a,16 b,8.
  c2 r4 r8 c8

  %13
  \acciaccatura{g} a4 (a8) g8 f4 a8 r8
  g8 (a) g (f) e4 g8 r
  f8. (g16 f8) e8 d4 b,8 (b,)
  c8 c d4 e r8 c

  %17
  \acciaccatura{g} a4 (a8) g8 f4 a8 r8
  g8 (a) g (f) e4 (g8 r16 g)
  fis8 (e) fis g a4 d8 r8
  \acciaccatura{a} b4 (b8.) a16 g4 (f)

  %21
  \time 2/4
  r4 r8 e
  \time 4/4
  e4 e8 e e4 g8 g
  f8. (g16 f8) e8 d4 r8 g,
  \acciaccatura{c} d8 d d d d d c (d)

  %25
  e2 r4 r8 g,
  \acciaccatura{d} e4 e r r e e \acciaccatura{f} g
  f8 (g) f e d4 r8 g,
  \acciaccatura{c} d4 d8. r16 c8 b, a, (b,)

  %29 repeat1
  c4. 
  \interlude
  r8 c,

  %33 repeat2
  c2 r4 r8 g,
  \acciaccatura{d} e8 e8. r16 r8 e e \acciaccatura{f} g
  f8 (g) f e d4 r8 g,
  \acciaccatura{1} d4 d8. r16 c8 b, a, (b,)

  %37
  c2 r4 r8 g,
  \acciaccatura{d} e8 e8. r16 r8 e e \acciaccatura{f} g
  f8 (g) f e d4 r8 g,
  \acciaccatura{1} d4 d8. r16 c8 b, a, (b,)

  %41
  c4. 
  \interlude
  r4
}

harmony= \chords {
  \common

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
