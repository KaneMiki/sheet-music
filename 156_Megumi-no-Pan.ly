\header {
  title = "156. めぐみのパン"
  composer = "前田 菊枝"
  poet = "典礼委員会"
}

textMegumiI = \lyricmode {
め ぐ み の パ ン は わ れ ら を 満 た し わ れ ら は ひ と つ に む す ば れ る 
"心を尽くして神を たた" え
"すべてをあげてとうといその名をほめ歌お" ~う
"心を尽くして神を たた" え
"すべての恵みに心を" 留めよ ~う
}

melodyMegumi = 
{
  \numericTimeSignature
  \clef treble
  \autoBeamOff
  \time 3/4
  \tempo 4 = 80
  \key bes \major
    d'8  es'  f'4 f'
    es'8  d'  es'2
    a'8 g' g' f' c' es'
    d'2 r4
    a'8 g' g'4 g'
    g'8 c'' bes'4  f'
  \time 4/4
  c'8 d' es'2 f'4
  d'2. r4
  \bar "|."
  \cadenzaOn
  f'1 g'4 r8 \bar "|"
  es'1 f'4 r8 \bar "|"
  g'1 a'4 r8 \bar "|"
  f'1 es'2 d'4
  \cadenzaOff
  \bar "||"

  }

\score {
  \new Staff = "melrs" \with {} 
    <<
      \new Voice = "melrv" { \melodyMegumi }
      \new Lyrics \lyricsto "melrv" \textMegumiI
    >>  

  \layout {}
  \midi {}
}