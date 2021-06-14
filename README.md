# Terminal Unicode Core Specification

**IMPORTANT: THIS PROJECT IS IN ALPHA STAGE & ACTIVE DEVELOPMENT**

Let's make Unicode support in terminal emulators better - not perfect, but better.

For that I'd like to introduce a small spec that at least tries to tackle **some**
basics that would greatly help user experience.

Of course, the terminal emulator is not enough, terminal applications have
to catch up, too. But without support from terminals, the applications
cannot even start doing so. This draft spec tries to fix that.

## Goal of this repository

It would be nice if this repository serves as a communication hub for improving this spec
that ideally enough terminal emulators will adopt so we could call this the future defacto image protocol
for terminals, so that developers have it easier in the future on how to get images into their
terminal applications.

## How to contribute

Everybodies point of view is valuable, whether terminal emulator developer, terminal application or
toolkit developer, or a user.

While getting this spec in shape, I'd like to get your feedback to find a common
concensus that most of us can agree on with the goal to get an adoption as broad as possible.

Sure, this won't happen in a day or even 2 years. But someone has to start at some point,
so more can follow.

## This spec is NOT

- attempting to bring full Unicode support to the terminal
- planning to get Unicode BiDi support formalized (mlterm could be doing that much better :) )
- tackle every other niche aspect of Unicode.

## This spec will

- Enable users to make use of Ligatures and Emoji without sacrifice.
- Have legacy applications as well as newer ones respecting this spec compatible in one terminal.

## Roadmap

- [x] create CI job for auto-generating PDF/markdown of the latest draft to be downloadable
- [x] create CI job for providing prereleases of the draft specification.
- [ ] Move Changelog into .tex file and let CI's release.yml extract it from there
- [ ] Create Github pages that have an auto-generated PDF/markdown version of this specification.
- [ ] Hopefully get enough terminal and TUI app devs attracted to collaborate in a positive, friendly, and productive manner.

## FAQ

- **Why LaTeX and not Markdown?** Expressivity and the fact that you can convert to Markdown: https://pandoc.org/demos.html
- **Why GitHub and not GitLab on freedesktop?** Better reachability.

