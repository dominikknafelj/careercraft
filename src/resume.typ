// src/resume.typ
#let resume(
  applicant-name: none,
  applicant-address: none,
  applicant-city: none,
  applicant-postal-code: none,
  applicant-email: none,
  applicant-phone: none,
  country: "US",
  font: "Times New Roman",
  font-size: 11pt,
  education: (),
  experience: (),
  skills: ()
) = {
  if country not in ("US", "DE") {
    panic("Invalid country: must be 'US' or 'DE'")
  }

  set document(author: applicant-name)
  set page(
    paper: if country == "DE" { "a4" } else { "us-letter" },
    margin: if country == "DE" { (left: 2.5cm, right: 2cm, top: 2.5cm, bottom: 2cm) } else { 2.54cm },
    header: none,
    footer: none
  )
  set text(font: font, size: font-size)
  set par(leading: 0.65em, justify: country == "DE")

  // Header
  align(center)[
    #text(size: 16pt, weight: "bold")[#applicant-name]
    #v(0.5em)
    #applicant-address | #applicant-city, #applicant-postal-code
    #v(0.2em)
    #applicant-email | #applicant-phone
  ]

  // Education
  if education.len() > 0 {
    v(1em)
    text(weight: "bold")[Education]
    for edu in education [
      #v(0.5em)
      #edu.degree, #edu.institution, #edu.location (#edu.year)\
      #edu.description
    ]
  }

  // Experience
  if experience.len() > 0 {
    v(1em)
    text(weight: "bold")[Experience]
    for exp in experience [
      #v(0.5em)
      #exp.title, #exp.company, #exp.location (#exp.years)\
      #exp.description
    ]
  }

  // Skills
  if skills.len() > 0 {
    v(1em)
    text(weight: "bold")[Skills]
    v(0.5em)
    skills.join(", ")
  }
}