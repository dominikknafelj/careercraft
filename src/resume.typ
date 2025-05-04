// src/resume.typ
// Resume template inspired by Stephen Xu's basic-typst-resume-template
// https://github.com/stuxf/basic-typst-resume-template

#let resume(
  applicant-name: none,
  applicant-address: none,
  applicant-city: none,
  applicant-postal-code: none,
  applicant-email: none,
  applicant-phone: none,
  github: none,
  linkedin: none,
  personal-site: none,
  country: "US",
  font: "Times New Roman",
  font-size: 11pt,
  accent-color: rgb("#26428b"),
  author-position: center,  // center or left
  personal-info-position: center, // center or left
  education: (),
  experience: (),
  skills: (),
  projects: (),
  certifications: (),
  languages: (),
  interests: none
) = {
  if country not in ("US", "DE") {
    panic("Invalid country: must be 'US' or 'DE'")
  }

  // Helper function for section headings
  let section-heading(title) = {
    v(1em)
    block[
      #box(
        fill: none,
        stroke: (bottom: 1pt + accent-color),
        inset: (bottom: 3pt),
        width: 100%,
        [#text(weight: "bold", size: font-size + 2pt, fill: accent-color)[#title]]
      )
    ]
    v(0.3em)
  }

  // Document settings
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
  align(author-position)[
    #text(size: 20pt, weight: "bold", fill: accent-color)[#applicant-name]
  ]
  
  // Personal information
  v(0.2em)
  align(personal-info-position)[
    #if applicant-address != none and applicant-city != none and applicant-postal-code != none {
      [#applicant-address | #applicant-city, #applicant-postal-code]
    }
    #v(0.2em)
    
    #let info-parts = ()
    #if applicant-email != none { info-parts.push(applicant-email) }
    #if applicant-phone != none { info-parts.push(applicant-phone) }
    #if github != none { info-parts.push([GitHub: #link("https://" + github)[#github]]) }
    #if linkedin != none { info-parts.push([LinkedIn: #link("https://" + linkedin)[#linkedin]]) }
    #if personal-site != none { info-parts.push(link("https://" + personal-site)[#personal-site]) }
    
    #info-parts.join(" | ")
  ]

  // Education Section
  if education.len() > 0 {
    section-heading("Education")
    for edu in education {
      block[
        #grid(
          columns: (auto, 1fr, auto),
          gutter: 1em,
          align(left)[*#edu.institution*],
          align(center)[#edu.degree],
          align(right)[#edu.location]
        )
        #v(-0.2em)
        #grid(
          columns: (1fr, auto),
          gutter: 1em,
          [],
          align(right)[#edu.year]
        )
        #if "description" in edu and edu.description != none {
          [#v(0.2em)#edu.description]
        }
      ]
      v(0.5em)
    }
  }

  // Experience Section
  if experience.len() > 0 {
    section-heading("Experience")
    for exp in experience {
      block[
        #grid(
          columns: (auto, 1fr, auto),
          gutter: 1em,
          align(left)[*#exp.company*],
          align(center)[*#exp.title*],
          align(right)[#exp.location]
        )
        #v(-0.2em)
        #grid(
          columns: (1fr, auto),
          gutter: 1em,
          [],
          align(right)[#exp.years]
        )
        #if "description" in exp and exp.description != none {
          [#v(0.2em)#exp.description]
        }
      ]
      v(0.5em)
    }
  }

  // Projects Section
  if projects.len() > 0 {
    section-heading("Projects")
    for project in projects {
      block[
        #grid(
          columns: (auto, 1fr, auto),
          gutter: 1em,
          align(left)[*#project.name*],
          align(center)[#if "role" in project { project.role }],
          align(right)[#if "dates" in project { project.dates }]
        )
        #if "description" in project and project.description != none {
          [#v(0.2em)#project.description]
        }
      ]
      v(0.5em)
    }
  }
  
  // Certifications Section
  if certifications.len() > 0 {
    section-heading("Certifications")
    for cert in certifications {
      block[
        #grid(
          columns: (auto, 1fr, auto),
          gutter: 1em,
          align(left)[*#cert.name*],
          align(center)[#if "organization" in cert { cert.organization }],
          align(right)[#if "date" in cert { cert.date }]
        )
      ]
      v(0.5em)
    }
  }

  // Skills Section
  if skills.len() > 0 {
    section-heading("Skills")
    skills.join(", ")
  }
  
  // Languages Section
  if languages.len() > 0 {
    section-heading("Languages")
    languages.join(", ")
  }
  
  // Interests Section
  if interests != none {
    section-heading("Interests")
    interests
  }
}