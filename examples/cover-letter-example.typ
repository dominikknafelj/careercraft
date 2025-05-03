#import "../lib.typ": cover-letter

// US Cover Letter Example
#cover-letter(
  [
    I am writing to express my interest in the Senior Software Engineer position posted on your company website. With over 8 years of experience in full-stack development and a strong background in cloud architecture, I believe I would be a valuable addition to your team.

    Throughout my career, I have successfully delivered enterprise-level applications using modern technologies including React, Node.js, and AWS services. In my current role at TechCorp, I led the development of a microservices architecture that improved system reliability by 35% and reduced deployment time by 50%.

    I am particularly drawn to Tech Innovations because of your commitment to cutting-edge technology and your focus on creating solutions that make a positive impact. My experience aligns well with the requirements outlined in your job posting, and I am excited about the opportunity to contribute to your innovative projects.

    I look forward to discussing how my skills and experience can benefit your team. Thank you for considering my application.
  ],
  recipient: "Hiring Manager",
  company: "Tech Innovations Inc.",
  address: "123 Silicon Valley",
  city: "San Francisco",
  postal-code: "94105",
  country: "US",
  applicant-name: "John Smith",
  applicant-address: "456 Developer Lane",
  applicant-city: "San Francisco",
  applicant-postal-code: "94107",
  applicant-email: "john.smith@example.com",
  applicant-phone: "(555) 123-4567",
  date: datetime.today(),
  subject: "Application for Senior Software Engineer Position",
  greeting: "Dear Hiring Manager,",
  closing: "Sincerely,",
  signature: none,
  enclosures: ("Resume", "Portfolio")
)

#pagebreak()

// German Cover Letter Example (DIN 5008)
#cover-letter(
  [
    hiermit bewerbe ich mich um die auf Ihrer Webseite ausgeschriebene Position als Senior Software-Entwickler. Mit über 8 Jahren Erfahrung in der Vollstack-Entwicklung und einem starken Hintergrund in Cloud-Architektur bin ich überzeugt, dass ich eine wertvolle Ergänzung für Ihr Team sein würde.

    Im Laufe meiner Karriere habe ich erfolgreich Anwendungen auf Unternehmensebene mit modernen Technologien wie React, Node.js und AWS-Diensten entwickelt und bereitgestellt. In meiner aktuellen Position bei TechCorp habe ich die Entwicklung einer Microservices-Architektur geleitet, die die Systemzuverlässigkeit um 35% verbessert und die Bereitstellungszeit um 50% reduziert hat.

    Innovationen GmbH hat mich besonders durch Ihr Engagement für modernste Technologie und Ihren Fokus auf Lösungen, die positive Auswirkungen haben, angesprochen. Meine Erfahrung stimmt gut mit den in Ihrer Stellenausschreibung genannten Anforderungen überein, und ich freue mich auf die Möglichkeit, zu Ihren innovativen Projekten beizutragen.

    Ich freue mich auf ein persönliches Gespräch, um zu besprechen, wie meine Fähigkeiten und Erfahrungen Ihrem Team zugutekommen können. Vielen Dank für die Berücksichtigung meiner Bewerbung.
  ],
  recipient: "Frau Schmidt",
  company: "Innovationen GmbH",
  address: "Technologiestraße 45",
  city: "Berlin",
  postal-code: "10115",
  country: "DE",
  applicant-name: "Max Mustermann",
  applicant-address: "Entwicklerstraße 23",
  applicant-city: "München",
  applicant-postal-code: "80331",
  applicant-email: "max.mustermann@example.com",
  applicant-phone: "+49 89 123456789",
  date: datetime.today(),
  subject: "Bewerbung als Senior Software-Entwickler",
  greeting: "Sehr geehrte Frau Schmidt,",
  closing: "Mit freundlichen Grüßen,",
  signature: none,
  enclosures: ("Lebenslauf", "Portfolio", "Zeugnisse")
) 