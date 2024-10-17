#import "../lib.typ": *

#show: report.with(
  title: "Algorithms for Lightsaber dueling", // Change accordingly
  author: "Anakin Skywalker", // Add your name here
  unit_type: "Full Unit", // Full Unit or Half Unit
  report_type: "Final Report", // Project Plan, Interim Report, Final Report
  course_name: "BSc (Hons) in Computer Science", // Change accordingly
  supervisor: "Obi-Wan Kenobi", // Add your supervisor's name here
  date: "October 2024", // Change accordingly
)

#import "@preview/codly:1.0.0": *
#show: codly-init.with()
#codly(zebra-fill: color.hsl(200deg, 80%, 95%, 98%))
#codly(display-name: false)

= Examples

#lorem(20)

== Citation
This is something stated from a source @example-source.

== Tables
Here's a table:
#figure(
  caption: [Table of numbers],
  table(
    columns: (auto, auto),
    inset: 8pt,
    align: horizon,
    table.header(
      [*Letters*], [*Number*], 
    ),
    [Five], [5],
    [Eight], [8],
  ) 
)

== Code blocks
Here's a code block in Golang:

```go
package main
import "fmt"
func main() {
  fmt.Println("Hello, world!")
}
```


== Math
Let $a$, $b$, and $c$ be the side
lengths of right-angled triangle.
Then, we know that:
$ a^2 + b^2 = c^2 $

Prove by induction:
$ sum_(k=1)^n k = (n(n+1)) / 2 $