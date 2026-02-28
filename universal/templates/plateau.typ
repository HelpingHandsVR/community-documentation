
#let header_page(
  title: [],
  subtitle: [],

  background_fill: rgb("#5071d4"),

  infill_content: rect(fill: tiling(size: (15pt, 15pt))[
    #place(line(start: (50%, 0%), end: (50%, 100%), stroke: white.transparentize(50%)))
    #place(line(start: (0%, 50%), end: (100%, 50%), stroke: white.transparentize(50%)))
  ], width: 100%, height: 100%),

  accent_fill_color: rgb("#1e3c88"),
  accent_fill_darken: 50%,
  accent_fill_opacity: 50%,
  accent_fill: none,

  title_size: 30pt,
  title_color: white,
  title_font: "AUTHENTIC Sans 130",
  title_icon: image("../images/logos/logo.svg"),
  title_font_size: none,
  title_column_gutter_size: none,
  title_row_gutter_size: none,
  title_row_padding: none,

  subtitle_font_size: none,
  subtitle_color: none,
  subtitle_font: "AUTHENTIC Sans 60",
) = {
  let accent_fill = if accent_fill == none {
    gradient.linear(
      accent_fill_color.transparentize(100% - accent_fill_opacity),
      accent_fill_color.darken(accent_fill_darken),
      angle: 60deg
    )
  } else {
    accent_fill
  }

  let title_font_size = title_size * 0.9
  let title_column_gutter_size = if title_column_gutter_size == none { title_size * 0.5 } else { title_column_gutter_size }
  let title_row_gutter_size = if title_row_gutter_size == none { title_size * 0.1 } else { title_row_gutter_size }
  let title_row_padding = if title_row_padding == none { title_size * 0.4 } else { title_row_padding }

  let subtitle_font_size = if subtitle_font_size == none { title_font_size } else { subtitle_font_size }
  let subtitle_color = if subtitle_color == none { title_color } else { subtitle_color }

  // Plateau initial page
  page(margin: 0pt, [
    #place(top + left, rect(width: 100%, height: 100%, fill: background_fill))
    #place(top + left, [#infill_content])
    #place(top + left, rect(width: 100%, height: 100%, fill: accent_fill))
    #place(horizon + center, grid(
      columns: ((title_size + title_row_padding) * 2, auto),
      rows: (title_row_padding, title_size, title_size, title_row_padding),
      column-gutter: title_column_gutter_size,
      row-gutter: title_row_gutter_size,
      grid.cell(rowspan: 4, title_icon),
      [],
      align(left, text(fill: title_color, size: title_font_size, font: title_font)[
        #title
      ]),
      align(left, text(fill: subtitle_color, size: subtitle_font_size, font: subtitle_font)[
        #subtitle
      ]),
      [],
    ))
  ])

}

#let template(
  ..args,
  body
) = {
  header_page(..args)

  set page(numbering: "1")
  set par(justify: true)
  show raw: set text(font: "Iosevka Fixed", size: 1.2em)
  set text(font: "Inter Tight")

  // Fancy headers
  let circle_overbuffer = 0.25em
  let circle_innersize = 1em
  let heading_spacing = 0.5em
  let heading_preline = 10pt
  show heading.where(level: 1): it => context grid(
    columns: (heading_preline, circle_overbuffer * 2 + circle_innersize, heading_spacing, auto, heading_spacing, 1fr),
    rows: (circle_overbuffer, circle_innersize, circle_overbuffer),

    grid.cell(colspan: 1)[],
    grid.cell(rowspan: 3)[
      #circle(height: circle_overbuffer * 2 + circle_innersize)[
        #place(center + horizon)[
          #context { counter(heading).get().at(0) + 1 }
          #counter(heading).step()
        ]
      ]
    ],
    grid.cell(colspan: 4)[],
    line(start: (0%, 50%), end: (100%, 50%)),
    [],
    align(horizon, text(weight: 800, it.body)),
    [],
    line(start: (0%, 50%), end: (100%, 50%)),
  )

  body
}
