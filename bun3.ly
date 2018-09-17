\version "2.19.82"
\header {
  title =\markup {\override #' (font-name . "游明朝")"ぶん ぶん ぶん"}
  composer = \markup {\override #' (font-name . "游明朝")"ドイツ民謡"}
	lsrtags = "text, vocal-music"
	doctitle="UTF-8"
}
\paper {
  #(include-special-characters)
}
melody = {
    g'2 f'
    e'1
    d'4 e' f' d'
    c'1 \break
    e'4 f' g' e'
    d' e' f' d'
    e' f' g' e'
    d' e' f' d' \break
    g'2 f'
    e'1
    d'4 e' f' d'
    c'1
    \bar "|."
  } 
  textJ = \lyricmode {
    ぶ~ん ぶ~ん ぶ~ん は ち が と ぶ
    お い け の ま わ り に お は な が さ い た よ 
    ぶ~ん ぶ~ん ぶ~ん は ち が と ぶ
  }
\score {
  \new Staff \with{} 
    <<
      \new Voice = "mel" { \melody }
      \new Lyrics \lyricsto mel { \textJ }
    >>
  \layout {
			\override LyricText #'self-alignment-X = #CENTER
			\override LyricText #'font-name = "游明朝"
  }
  \midi {}
}