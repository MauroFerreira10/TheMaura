# Hyperframes Composition Brief: Portfólio Mauro Ferreira

## Objective
Create a short launch-style brag video for the Mauro Ferreira full-stack developer
portfolio — a site that presents a coding career with the grammar and cinematography
of an F1 season launch.

## Output
- Composition directory: `brag-output/composition/`
- Rendered video: `brag-output/brag.mp4`
- Format: landscape — 1920x1080
- Duration: 20.2s

## Source Material
- Project root: `C:\Users\The Maurá\landonorris-clone`
- Primary files read: `index.html`, `assets/67b5a02dc5d338960b17a7e9/css/Mauro-offbrand.shared.6e09a725a.css`
- Product name: Portfólio Mauro Ferreira — Programador Full-Stack
- Tagline / strongest claim: "a programar desde 2019"
- Key UI or visual moment to recreate: the hero portrait's colour → black-and-white
  halftone arc wipe (the site's WebGL `uHelmetHover` effect — a top-down wipe that sags
  0.2 further at centre). This is the signature and must be reproduced faithfully, not approximated.
- Copy that must appear verbatim:
  - "a programar desde 2019"
  - "Programador Full-Stack"
  - "Mauro Ferreira"
  - "BACK END" — "APIs, bases de dados e a lógica de servidor que potencia tudo o que acontece nos bastidores."
  - "FRONT END" — "Interfaces, animações e as experiências visuais que se tocam diretamente."
  - "Projetos" / "Em Destaque"
  - "RSLA Comercial" (2025) · "SafeBus" (em breve) · "Kamba Travel" (em breve)
  - "ver projetos"

## Creative Direction
- Tone preset: **polished**
- Creative direction: *grid-walk product film* — paddock precision applied to a developer portfolio
- Interpretation: fewer scenes, longer holds, confidence through restraint. Motion is
  energetic on entry then stops so the copy can be read. Nothing shouts; everything settles.
- Angle: the video presents a coding career with the seriousness of a driver presenting a
  season — mark, driver, duality, projects. The humour is in the absolute gravity of "BACK END",
  and the real quality of the site carrying it.
- Hook: the `</>` mark drawing itself in lime on the site's dark green — recognisable as
  sports-launch grammar before the viewer realises it's code.
- Outro / punchline: the three project tiles settle, Mauro's signature writes itself, and the
  lime CTA "ver projetos" — the site's real CTA — cuts to black.
- Avoid:
  - Generic SaaS language ("streamline your workflow" and anything like it)
  - Abstract filler visuals, colour washes, generic motion graphics
  - An unrelated visual redesign — this must look like the site

## Visual Identity
- Background: `#282c20` (`--color--dark-green`)
- Accent: `#d2ff00` (`--color--lime`)
- Text: `#f4f4ed` (`--color--white`)
- Secondary text: `#b9bbad` (`--color--grey-on-track`)
- Divider / tint: `#3b3c38` (`--color--dark-green-tint-1`)
- Display font: **Brier** (serif — "BACK END", "Full-Stack", "Em Destaque"). Fallback: a
  high-contrast serif if the webfont is unavailable.
- Body font: **Mona Sans Variable**. Fallback: a neutral grotesk.
- Visual references from the project:
  - the halftone B&W portrait treatment and its colour counterpart
  - the `</>` line mark that replaced the site's helmet symbol
  - the lime chat-bubble framing used on the project tiles
  - the split BACK END / FRONT END two-column section

## Storyboard
Use the storyboard in `brag-output/brag-plan.md` as the creative contract.

Scene summary:
1. A marca — 3.27s — the `</>` draws itself in lime; "a programar desde 2019" settles beneath
2. O piloto — 5.47s — the colour portrait at centre; "Programador Full-Stack" enters in Brier;
   the halftone arc wipe sweeps it to B&W; "Mauro Ferreira" settles bottom-left
3. A dualidade — 5.46s — split screen: BACK END (Brier, P&B portrait) arrives, then FRONT END
   (Mona Sans, colour portrait); both sentences fully readable before the scene ends
4. Os projetos e a assinatura — 5.99s — "Projetos / Em Destaque"; RSLA Comercial (2025),
   SafeBus (em breve), Kamba Travel (em breve) arrive one by one in lime bubble frames;
   the signature writes itself; "ver projetos"; cut to black

## Audio
- Audio role: warm, clean bed with subtle reactivity — the site breathes, the audio breathes with it
- Audio arc: quiet open → presence (not volume) gain across the portrait wipe → two settled
  accents on the BACK/FRONT arrivals → rhythmic arrival on the projects → calm fade under the signature
- Music: `happy-beats-business-moves-vol-12-by-ende-dot-app.mp3` (109.96 BPM, "steady and clean")
- Music treatment: starts at 0.0s, volume 0.35, 0.4s fade-in, 0.8s fade-out from 19.4s. Never above 0.4.
- Music cue guidance: bundled preset at
  `assets/music/cues/happy-beats-business-moves-vol-12-by-ende-dot-app.music-cues.json`
  (117.36s, 109.96 BPM). Strong cues in window: 8.74s (0.99), 13.11s (0.98), 17.47s (0.99),
  10.93s (0.97). Scene boundaries already sit on the beat grid: 3.27 / 8.74 / 14.20 / 20.19.
  Optional hints only — readability wins every conflict.
- Audio-reactive treatment: **subtle** — lime glow and portrait presence breathe with RMS
  during the wipe. No waveform bars, no equalizer graphics, no strobing, no pulsing text.
- Audio-coupled moments:
  - Scene 1 — the `</>` stroke-draw, one soft `interface/bong_001` near 0.4s
  - Scene 2 — the wipe onset ~4.4s, a quiet `interface/drop_001`; the lime background breathes
  - Scene 3 — FRONT END arrival near 10.93s, one restrained UI cue
  - Scene 4 — tiles snap to the beat grid (~15.29 / 16.38 / 17.47); cue the first and last only
- SFX selection guidance: polished posture — 2–3 cues total, low high-frequency risk, volumes
  0.55–0.7. Card sounds for the tile sequence, one soft announcement cue for the signature.
  Nothing aggressive; the tone is precision, not spectacle.
- SFX analysis guidance: `<skill-dir>/assets/sfx/sfx-analysis.md` — prefer low/medium HF-risk files.
- Exact SFX choice: Hyperframes chooses filenames, timestamps, density, and volume from the
  implemented animation.
- Audio files: music copied into `composition/assets/music/`; SFX copied in by Hyperframes.

## Hyperframes Instructions
Load `hyperframes-core`, `hyperframes-animation`, `hyperframes-creative`,
`hyperframes-keyframes`, `hyperframes-cli` to build `brag-output/composition/`.
/brag is its own workflow — do not enter the `hyperframes` entry-point intent interview and do
not route into its generic promo / launch-video workflow.

Requirements:
- Show at least one real UI / copy / visual element from the source project — the OTOT
  BACK/FRONT section and the project tiles are both real.
- Keep all text readable in the final render. The two sentences in Scene 3 are the tightest
  read; budget their settled holds accordingly.
- Keep the video within 15–25 seconds (target 20.2s).
- Include the planned music/SFX layer.
- Treat /brag audio notes as guidance, not a fixed cue sheet.
- Mark beat-locked tweens `// beat-locked` and beat-grid sequences `// beat-grid`.
- Keep creation and rendering local.

### Grounding note
Every line on screen is quoted from the project. Nothing in this video asserts a capability,
number, or claim the site does not make. The `</>` mark, the BACK/FRONT duality, the three
project names with their real dates, and the "ver projetos" CTA are all in the source.

### Data-safety note
The source HTML still carries third-party CDN URLs (og:image, menu imagery), a video stream id,
and leftover `alt` text naming the design's original provenance. None of it appears in this
composition. Every visual uses local assets from the project's own `assets/` directory.
