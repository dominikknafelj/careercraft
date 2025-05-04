#import "../lib.typ": resume

#show: doc => resume(
  applicant-name: "Jane Doe",
  applicant-address: "123 Main Street",
  applicant-city: "San Francisco",
  applicant-postal-code: "94105",
  applicant-email: "jane.doe@example.com",
  applicant-phone: "(555) 123-4567",
  github: "github.com/janedoe",
  linkedin: "linkedin.com/in/janedoe",
  personal-site: "janedoe.dev",
  country: "US",
  accent-color: rgb("#1a5fb4"),
  author-position: left,
  personal-info-position: left,
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
      description: "Lead developer for cloud infrastructure projects. Designed and implemented scalable microservices architecture. Reduced system latency by 40% and improved API response times by 60% through optimization techniques."
    ),
    (
      title: "Software Engineer",
      company: "StartupCo",
      location: "Palo Alto, CA",
      years: "2018-2020",
      description: "Full-stack development using React, Node.js, and PostgreSQL. Implemented CI/CD pipeline that reduced deployment time from days to hours. Designed and built RESTful APIs for mobile applications."
    ),
  ),
  projects: (
    (
      name: "Personal Portfolio Website",
      role: "Designer & Developer",
      dates: "2023",
      description: "Designed and developed a personal portfolio website using modern web technologies. Implemented responsive design principles and accessibility features."
    ),
    (
      name: "Open Source Contribution: Data Visualization Library",
      role: "Contributor",
      dates: "2022",
      description: "Contributed to an open-source data visualization library by implementing new chart types and fixing performance issues."
    ),
  ),
  certifications: (
    (
      name: "AWS Certified Solutions Architect",
      organization: "Amazon Web Services",
      date: "2022"
    ),
    (
      name: "Google Professional Cloud Developer",
      organization: "Google Cloud",
      date: "2021"
    ),
  ),
  skills: (
    "JavaScript", "TypeScript", "Python", "React", "Node.js", "Docker", "Kubernetes",
    "AWS", "CI/CD", "Git", "Machine Learning", "SQL", "NoSQL"
  ),
  languages: (
    "English (native)", "Spanish (fluent)", "French (intermediate)"
  ),
  interests: "Rock climbing, photography, hiking, and open-source contribution."
) 