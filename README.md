# How AI Rewired the Business Analyst Role

Talk deck for **AI for Business 2026**, Prague (4 November 2026), by Yevhenii Volkovych. The views in it are his own. The demo uses only synthetic data and public 10-K filings.

## Run it

```sh
./scripts/serve.sh        # serves the deck at http://localhost:8000 and opens it
./scripts/serve.sh 9000   # or pick another port
```

It needs Python 3 (preinstalled on macOS and most Linux). On Windows, run `python -m http.server 8000` in this folder and open http://localhost:8000.

Use the server rather than double-clicking `index.html`: the slides work from disk, but browsers block the live demo console (slide 15) on `file://`, and its popup stays blank. Fonts load from Google Fonts, so an internet connection helps.

The same deck is online at https://volkovyy-00.github.io/ai-for-business-2026-ba-talk/ once GitHub Pages is enabled (Settings → Pages → Deploy from a branch → `main` / root).

**Demo console offline:** outside the claude.ai artifact there is no live model, so the console replays its recorded questions and answers. Live questions only work in the artifact.

- **Next:** clicker, →, ↓, PageDown or Space
- **Back:** ←, ↑ or PageUp
- **First / last slide:** Home / End
- **Jump to a slide:** add `#N` to the address, for example `index.html#5`

The mouse wheel and trackpad also work.

**Logo:** the logo appears when a `falcon.svg` file sits next to `index.html`. It is left out of this repository on purpose; see `HANDOFF.md`.

## Edit it

1. Edit `src/deck.html`.
2. Run `./scripts/build.sh` to regenerate `index.html`.

`HANDOFF.md` explains how the deck works and records the design decisions and the current status of each slide.
