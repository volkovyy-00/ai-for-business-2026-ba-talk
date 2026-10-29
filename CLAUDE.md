# CLAUDE.md

Read `HANDOFF.md` before doing anything. It holds the deck's architecture, the agreed design system, each slide's status and the next steps.

Standing rules:
- Edit only `src/deck.html`. Then run `./scripts/build.sh`. Never hand-edit `index.html`.
- Work one slide at a time. After each change, republish `src/deck.html` to the existing artifact URL listed in `HANDOFF.md`. Read that artifact first, and publish with `url` set to it, never as a new artifact.
- Stay inside the Barclays palette. Cyan `#00AEEF` is for text emphasis; Active Blue `#006DE3` is for fills only.
- Don't change the wording on slides without telling the user exactly what changed.
- Keep `falcon.svg`, `.impeccable/` and screenshots out of git.
- When a slide's status changes, update `HANDOFF.md` §5.
