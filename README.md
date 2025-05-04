# CareerCraft

Templates for crafting professional cover letters and resumes in US and German (DIN 5008) formats.

## Features

- US and German (DIN 5008) format support
- Clean, professional design with customizable accent colors
- ATS-friendly resume layout (needs improvement for A4 based resumes)
- Customizable components
- Easy-to-use Typst templates

## Status

- Resume template: ✅ Working
- Cover letter template: ✅ Working

## Credits

The resume template design is inspired by [basic-typst-resume-template](https://github.com/stuxf/basic-typst-resume-template) by Stephen Xu, which provides an excellent foundation for ATS-friendly resume layouts.

## Installation

Add this package to your Typst project:

```bash
typst add careercraft
```

Or manually add to your `typst.toml`:

```toml
[package]
...
dependencies = ["careercraft"]
```

## Usage

### Resume

```typst
#import "@careercraft:0.1.0": resume

// Create a resume
#resume(
  // Personal information
  applicant-name: "John Doe",
  applicant-address: "123 Main Street",
  applicant-city: "New York",
  applicant-postal-code: "10001",
  applicant-email: "john.doe@example.com",
  applicant-phone: "(555) 123-4567",
  
  // Online profiles (all optional)
  github: "github.com/johndoe",
  linkedin: "linkedin.com/in/johndoe",
  personal-site: "johndoe.dev",
  
  // Formatting options
  country: "US", // Use "DE" for German format
  accent-color: rgb("#1a5fb4"), // Customize the accent color
  author-position: left, // "left" or "center"
  personal-info-position: left, // "left" or "center"
  
  // Content sections
  education: (
    (
      degree: "Bachelor of Science in Computer Science",
      institution: "University of Example",
      location: "Example City",
      year: "2018-2022",
      description: "Graduated with honors."
    ),
  ),
  experience: (
    (
      title: "Software Engineer",
      company: "Tech Company",
      location: "San Francisco, CA",
      years: "2022-Present",
      description: "Full-stack development using modern technologies."
    ),
  ),
  projects: (
    (
      name: "Personal Website",
      role: "Developer",
      dates: "2023",
      description: "Built a personal portfolio website using modern web technologies."
    ),
  ),
  certifications: (
    (
      name: "AWS Certified Developer",
      organization: "Amazon Web Services",
      date: "2022"
    ),
  ),
  skills: (
    "JavaScript", "TypeScript", "Python", "React"
  ),
  languages: (
    "English (native)", "Spanish (intermediate)"
  ),
  interests: "Photography, hiking, and reading."
)
```

### Cover Letter

```typst
#import "@careercraft:0.1.0": cover-letter

// Create a cover letter (body content as first positional argument)
#cover-letter(
  [
    I am writing to express my interest in the Software Engineer position at Tech Company...
    
    My experience includes...
    
    I look forward to discussing my qualifications further.
  ],
  recipient: "Hiring Manager",
  company: "Tech Company",
  address: "456 Business Ave",
  city: "San Francisco",
  postal-code: "94107",
  country: "US", // Use "DE" for German DIN 5008 format
  applicant-name: "John Doe",
  applicant-address: "123 Main Street",
  applicant-city: "New York",
  applicant-postal-code: "10001",
  applicant-email: "john.doe@example.com",
  applicant-phone: "(555) 123-4567",
  date: datetime.today(),
  subject: "Application for Software Engineer Position",
  greeting: "Dear Hiring Manager,",
  closing: "Sincerely,",
  signature: none,
  enclosures: ("Resume",)
)
```

## Examples

See the examples directory for complete working examples:
- `examples/resume-example.typ` - Example resume with all features
- `examples/cover-letter-example.typ` - Cover letter examples in both US and German DIN 5008 formats

## License

MIT
