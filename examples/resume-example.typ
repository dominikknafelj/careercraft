#import "../lib.typ": resume

#show: doc => resume(
  applicant-name: "Jane Doe",
  applicant-address: "123 Main Street",
  applicant-city: "San Francisco",
  applicant-postal-code: "94105",
  applicant-email: "jane.doe@example.com",
  applicant-phone: "(555) 123-4567",
  country: "US",
  education: (
    (
      degree: "Master of Science in Computer Science",
      institution: "Stanford University",
      location: "Stanford, CA",
      year: "2018-2020",
      description: "Specialized in Machine Learning and Artificial Intelligence. Thesis on neural network optimizations."
    ),
    (
      degree: "Bachelor of Science in Computer Science",
      institution: "UC Berkeley",
      location: "Berkeley, CA",
      year: "2014-2018",
      description: "Graduated with honors. Minor in Mathematics."
    ),
  ),
  experience: (
    (
      title: "Senior Software Engineer",
      company: "Tech Solutions Inc.",
      location: "San Francisco, CA",
      years: "2020-Present",
      description: "Lead developer for cloud infrastructure projects. Designed and implemented scalable microservices architecture."
    ),
    (
      title: "Software Engineer",
      company: "StartupCo",
      location: "Palo Alto, CA",
      years: "2018-2020",
      description: "Full-stack development using React, Node.js, and PostgreSQL. Implemented CI/CD pipeline."
    ),
  ),
  skills: (
    "JavaScript", "TypeScript", "Python", "React", "Node.js", "Docker", "Kubernetes",
    "AWS", "CI/CD", "Git", "Machine Learning", "SQL", "NoSQL"
  )
) 