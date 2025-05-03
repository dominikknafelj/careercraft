// src/cover-letter.typ
#let cover-letter(
  body,
  recipient: none,
  company: none,
  address: none,
  city: none,
  postal-code: none,
  country: "US",
  font: "Times New Roman",
  font-size: 11pt,
  date: datetime.today(),
  subject: none,
  greeting: none,
  closing: none,
  signature: none,
  enclosures: (),
  applicant-name: none,
  applicant-address: none,
  applicant-city: none,
  applicant-postal-code: none,
  applicant-email: none,
  applicant-phone: none,
) = {
  if country not in ("US", "DE") {
    panic("Invalid country: must be 'US' or 'DE'")
  }

  // Set document metadata if applicant name is provided
  if applicant-name != none {
    set document(author: applicant-name)
  }
  
  set page(
    paper: if country == "DE" { "a4" } else { "us-letter" },
    margin: if country == "DE" { (left: 2.5cm, right: 2cm, top: 2.5cm, bottom: 2cm) } else { 2.54cm },
    header: none,
    footer: none
  )
  set text(font: font, size: font-size)
  set par(leading: 0.65em, justify: country == "DE")

  let date-format = if country == "DE" {
    date.display("[day].[month].[year]")
  } else {
    date.display("[month repr:long] [day], [year]")
  }

  // German address block (DIN-Norm 5008)
  if country == "DE" {
    if applicant-name != none and applicant-address != none and applicant-city != none {
      align(left)[
        #applicant-name \
        #applicant-address \
        #applicant-postal-code #applicant-city
      ]
    }
    
    if recipient != none and company != none and address != none and city != none {
      align(left)[
        #recipient \
        #company \
        #address \
        #postal-code #city
      ]
    }
    
    v(2em)
    align(right)[#date-format]
    v(2em)
    
    if subject != none {
      align(left)[
        #text(weight: "bold")[Betreff] 
        #subject
      ]
    }
  } 
  // US address block
  else {
    if applicant-name != none and applicant-address != none and applicant-city != none {
      align(left)[
        #applicant-name \
        #applicant-address \
        #applicant-city, #applicant-postal-code
      ]
    }
    
    if applicant-email != none {
      align(left)[#applicant-email]
    }
    
    if applicant-phone != none {
      align(left)[#applicant-phone]
    }
    
    v(1em)
    align(left)[#date-format]
    v(1em)
    
    if recipient != none and company != none and address != none and city != none {
      align(left)[
        #recipient \
        #company \
        #address \
        #city, #postal-code
      ]
    }
    
    if subject != none {
      v(1em)
      align(left)[#subject]
    }
  }

  // Letter content
  v(1em)
  if greeting != none {
    align(left)[#text(weight: "regular")[#greeting]]
    v(0.5em)
  }
  
  body
  
  v(1em)
  if closing != none {
    align(left)[#text(weight: "regular")[#closing]]
    v(3em)
  }
  
  // Signature
  if applicant-name != none {
    align(left)[
      #if signature != none { signature }
      #applicant-name
    ]
  }
  
  // German contact info in signature
  if country == "DE" and (applicant-email != none or applicant-phone != none) {
    v(0.5em)
    if applicant-email != none {
      align(left)[E-Mail: #applicant-email]
    }
    
    if applicant-email != none and applicant-phone != none {
      align(left)[ | ]
    }
    
    if applicant-phone != none {
      align(left)[Telefon: #applicant-phone]
    }
  }
  
  // Enclosures
  if enclosures.len() > 0 {
    v(1em)
    align(left)[#text(weight: "regular")[Enclosures: #enclosures.join(", ")]]
  }
}