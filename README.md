# Zide Fan - Personal Academic Homepage

This is the personal academic website of **Zide Fan (樊子德)**, built with the [al-folio](https://github.com/alshedivat/al-folio) Jekyll theme.

## Quick Deploy

1. Create a new GitHub repository named `Fanzide.github.io`
2. Upload all files from this directory
3. Go to Settings → Actions → General → set Workflow permissions to "Read and write"
4. Wait for the Deploy action to finish (~4 min)
5. Go to Settings → Pages → set branch to `gh-pages`
6. Visit https://Fanzide.github.io

See [MAINTENANCE_GUIDE.md](MAINTENANCE_GUIDE.md) for detailed instructions.

## Structure

```
├── _bibliography/papers.bib    # All publications (25+ entries)
├── _data/                      # CV, socials, coauthors, etc.
├── _news/                      # News & announcements
├── _pages/                     # About, publications, CV, projects, teaching
├── _projects/                  # Research projects
├── assets/json/resume.json     # CV in JSON Resume format
├── _config.yml                 # Site configuration
└── .github/workflows/deploy.yml # Auto-deploy workflow
```

## Local Development

```bash
docker compose up    # Visit http://localhost:8080
```

Or without Docker:

```bash
bundle install && bundle exec jekyll serve    # Visit http://localhost:4000
```

## License

MIT License (inherited from al-folio theme)
