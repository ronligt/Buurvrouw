#import "@preview/transl:0.1.1": transl

#let article(
  title: none,
  author: none,
  description: none,
  keywords: none,
  modifications: none,
  date: datetime.today(),
  header: none,
  logo: none,
  version: none,
  l10n: "langs.yaml",
  doc
) = {
  transl(data: yaml(l10n))

  set document(
    title: title,
    author: author,
    description: description,
    keywords: keywords,
    date: date,
  )

  set page(
    paper: "a4",
    columns: 1,
    header: context {
      if logo != none  [
        #box(image(logo))
      ] else [
        #header
      ]
      if counter(page).get().first() > 1 [ 
        #h(1fr)
        #title
      ]
    },
    footer: context [
      #counter(page).display(
        "1/1",
        both: true,
      )
      #h(1fr)
      #transl("version"): #version
    ],
  )

  

  // space before and after heading
  show heading: set block(above: 1.5em, below: 1em)

  // smart figure placement
  set figure(placement: auto)
  // distance between image and caption
  set figure(gap: 1.4em)
  
  // title block

  v(2em)
  
  align(center)[
    #text(
      size: 2em,
      weight: "black"
    )[#title]
    
    #author
    
    #emph(date.display("[day]-[month]-[year]"))
  ]
  
  pad(
    left: 10%,
    right: 10%,
  )[
    #align(start+top)[
      #par(justify: true)[
        #text(size: 1em)[
          *#transl("Description"):* #description
        ] \
        #text(size: 1em)[
          *#transl("Keywords"):* #keywords
        ] \
        #text(size: 1em)[
          *#transl("Modifications"):*
        ]
      ]
      #for mod in modifications {
        list.item(mod)
      }
    ]
  ]
  
  v(2em)
  
  // main block
  
  doc
}