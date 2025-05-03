# CareerCraft

Templates for crafting professional cover letters and resumes in US and German (DIN 5008) formats.

## Features

- US and German (DIN 5008) format support
- Clean, professional design
- Customizable components
- Easy-to-use Typst templates

## Status

- Resume template: ✅ Working
- Cover letter template: ✅ Working

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
  applicant-name: "John Doe",
  applicant-address: "123 Main Street",
  applicant-city: "New York",
  applicant-postal-code: "10001",
  applicant-email: "john.doe@example.com",
  applicant-phone: "(555) 123-4567",
  country: "US",
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
  skills: (
    "JavaScript", "TypeScript", "Python", "React"
  )
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
- `examples/resume-example.typ` - Example resume
- `examples/cover-letter-example.typ` - Cover letter examples in both US and German DIN 5008 formats

## License

MIT
