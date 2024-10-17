// Royal Holloway, University of London Report template
// Created by Otto Helen-Goldring in 2024 under the MIT License.
// Modified from light-report-uia (https://typst.app/universe/package/light-report-uia/)

#let report(
  title: none,
  author: none,
  group_name: none,
  course_name: none,
  unit_type: none,
  report_type: none,
  supervisor: none,
  date: none,
  location: "Egham",
  references: "references.yml",
  body 
) = {
  set document(title: [#title - #group_name], author: author)
  set text(font: "Fira Sans")
  set par(justify: true)
  show link: underline

  show heading: set block(above: 30pt, below: 30pt)

  show heading.where(level: 1): set text(size: 20pt)

  show heading.where(level: 1): set heading(supplement: [Chapter])
  show heading.where(level: 1): it => block({
  let prefix = if it.numbering != none {
    it.supplement + [ ] + counter(heading).display(it.numbering) + [: ]
  }
  text(weight: "regular",prefix) + it.body
  })

  show heading.where(level: 2): set text(size: 16pt)

  set page(header: context {if counter(page).get().first() > 1 [#report_type #h(1fr) #author]})


  // FRONT PAGE
  set align(center)
  
  text(10pt, author + ", " + date)
  v(5mm)
  
  text(22pt, "Final Year Project Report")
  v(1mm)
  text(14pt, unit_type + " - " + report_type, weight: "bold")
  v(3mm)
  line(length: 30%)
  text(25pt, weight: "bold", title)
  v(3mm)
  
  text(18pt, group_name) 
  text(18pt, author)
  v(3mm)
  line(length: 30%)

  text(14pt, report_type + " submitted in part fulfilment of the degree of ")
  v(3mm)
  text(16pt, weight: "bold")[        #course_name  ]
  v(3mm)
    text(18pt, "Supervisor: ", weight: "bold")
    text(18pt, supervisor)

  v(1fr) // to bottom
  block(height: 25%, image("media/rhul.jpg", height: 75%))
  text(14pt)[Department of Computer Science#linebreak()Royal Holloway, University of London]
  v(20mm)
  
  text(12pt)[#location, #date]

  pagebreak()

  // contents page
  set align(left)
  set heading(numbering: "1.1")

  
  outline(indent:2em, title: "Contents")

  pagebreak()

  // after the front page and content things

  set page(numbering: "1", number-align: center)
  counter(page).update(1)

  // main.typ
  body

  pagebreak()

  bibliography("template/" + references, title: "Bibliography")
}
