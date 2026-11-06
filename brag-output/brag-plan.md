# Brag Plan: Portfólio Mauro Ferreira — Programador Full-Stack

## What is this app?

Um portfólio pessoal de um programador full-stack que apropria por completo a linguagem
visual e verbal de um site de piloto de F1 — e troca a corrida por código: "ON TRACK" vira
**BACK END**, "OFF TRACK" vira **FRONT END**, o capacete vira `</>`, e "a competir desde"
vira "a programar desde 2019". É um site premium de verdade (WebGL, Rive, scroll horizontal)
que acontece a estar a vender um developer.

## The angle

**A grelha de partida, mas para código.** O vídeo trata a carreira de developer com o mesmo
rigor cinematográfico com que um piloto apresenta a sua época: marca, piloto, dualidade,
projetos. O riso vem da seriedade absoluta com que se diz "BACK END" — e da beleza real do
site a sustentá-la. A piada estrutural do site (a dualidade BACK/FRONT) é a espinha dorsal
do vídeo, não um detalhe.

Não é "mais um portfólio". É um portfólio que se apresenta como uma temporada.

## Hook (first 2-3 seconds)

O símbolo `</>` desenha-se a si próprio em **lime** sobre o verde-escuro do site, como o
traçado de um capacete em linha fina. Por baixo assenta **"a programar desde 2019"**.

Quem vê reconhece a gramática de um launch de desporto antes de perceber que é código.
Isso compra os restantes 17 segundos.

## Key moments (the middle)

- **O retrato a virar meio-tom.** O retrato a cores de Mauro ao centro, e o efeito assinatura
  do site a varrê-lo: a onda que desce e transforma tudo o que toca em P&B de meio-tom,
  cedendo ao centro antes das bordas. É o efeito WebGL real do hero, reproduzido com fidelidade.
- **BACK END / FRONT END lado a lado.** A secção OTOT do site como um plano único dividido:
  "BACK END" em Brier serifada e "FRONT END" em Mona Sans, cada um com a sua linha de copy,
  retratos a P&B e a cores a corresponder. Chegam em sequência, um depois do outro.
- **Os três projetos como cartas.** RSLA Comercial (2025), SafeBus (em breve), Kamba Travel
  (em breve) — cada um no seu enquadramento de balão de conversa, a entrar um de cada vez,
  como uma mão a distribuir cartas.

## Outro / punchline

As três tiles assentam. A assinatura de Mauro escreve-se por baixo. Uma última linha lime:
**"ver projetos"** — o mesmo CTA real do site. Corte para preto.

## User flow worth showing

none — landing-page only. O site é um portfólio estático multi-página sem app, sem
autenticação, sem estado. A matéria-prima mais forte é, por isso, a secção OTOT (BACK/FRONT)
e o efeito do retrato, ambos reproduzidos como momento central.

## Tone

- Preset: **polished**
- Creative direction: *grid-walk product film* — precisão de paddock aplicada a um portfólio
- Interpretation: menos cenas, holds mais longos, confiança por contenção. O movimento é
  enérgico à entrada e depois pára para ser lido. Nada grita; tudo assenta.

## Format: landscape — 1920x1080

## Duration: 20.2s

## Visual identity (from the project)

- Background: `#282c20` (`--color--dark-green`)
- Accent: `#d2ff00` (`--color--lime`)
- Text: `#f4f4ed` (`--color--white`)
- Secondary text: `#b9bbad` (`--color--grey-on-track`)
- Tint / divider: `#3b3c38` (`--color--dark-green-tint-1`)
- Display font: **Brier** (serifada — usada em "BACK END", "Full-Stack", "Em Destaque")
- Body font: **Mona Sans Variable**
- Strongest visual element: o retrato a cores com a viragem para P&B de meio-tom, e os
  enquadramentos de balão de conversa em traço lime das tiles de projeto.

## Material do projeto a usar (assets locais, nenhum externo)

- `assets/mauro-ferreira-hero-2048.webp` — retrato a cores (camada de base)
- `assets/mauro-ferreira-hover-2048.webp` — retrato P&B de meio-tom (camada revelada)
- `assets/mauro-ferreira-backend-bw.webp` / `-frontend-color.webp` — o par OTOT
- `assets/proj-rsla-base.webp` + `proj-rsla-hover.webp`, e o mesmo para `safebus` e `kamba`
- `assets/mauro-signature-*.svg` — assinatura para o outro
- `assets/mauro-h-01..10.webp` — fotos de apoio (não centrais)

**Substituições por segurança de dados:** o HTML de origem ainda aponta og:image e várias
imagens de apoio para URLs de CDN de terceiros e transporta ids de stream de vídeo. Nada
disso entra no vídeo nem no plano — todos os visuais vêm dos assets locais do projeto.
Os `alt` leftovers que ainda mencionam a proveniência original do design também ficam de fora.

## Share copy (draft)

BACK END, FRONT END, e um portfólio que se apresenta como se fosse uma temporada de F1.

## Audio direction

- Role: cama quente e limpa com sutil reatividade — o site respira, a áudio deve respirar com ele
- Music: `happy-beats-business-moves-vol-12-by-ende-dot-app.mp3` (109.96 BPM, "steady and clean",
  a faixa indicada para o preset `polished`)
- Music treatment: começa em 0.0s a volume 0.35, fade-in curto de 0.4s, fade-out final de 0.8s.
  Nunca acima de 0.4. Ganho de presença (não volume) no varrimento do retrato.
- Music cue guidance: preset lido em
  `assets/music/cues/happy-beats-business-moves-vol-12-by-ende-dot-app.music-cues.json` (117.36s,
  109.96 BPM). Âncoras: **8.74s** (strong_beat 0.99) para a virada para a secção BACK/FRONT;
  **13.11s** (0.98) para a chegada do FRONT END; **17.47s** (0.99) para o conjunto de projetos
  assentar. Fronteiras de cena alinhadas à grelha: 3.27 / 8.74 / 14.20 / 20.19.
- Audio-reactive treatment: **subtle** — a cor lime e o brilho do retrato respiram com o RMS
  da cama durante o varrimento. Sem barras de equalizador, sem visualizadores, sem pulsar texto.
- SFX posture: **mínimo mas presente** (polished = 2–3 cues). Um `interface/bong_001` suave no
  desenho da marca inicial; um `interface/drop_001` na revelação do retrato; um último cue
  discreto quando a assinatura assenta. Nada agressivo, volumes 0.55–0.7.
- Audio-coupled moments: o traçado do `</>` (0.0–2.2s); o início do varrimento P&B (~4.4s);
  a chegada sequencial BACK END → FRONT END; as três tiles a entrar uma a uma (~15–18s).
- Restraint rule: nenhum SFX em cima de texto a ser lido. Nada de impactos pesados — o tom
  é de precisão, não de espetáculo.

## Storyboard

### Scene 1 — A marca — 3.27s

Campo verde-escuro `#282c20`, cheio. O símbolo `</>` em traço fino lime `#d2ff00` desenha-se
a si próprio ao centro (0.0–2.2s), como uma linha de capacete a ser esboçada. A 2.2s assenta
e ganha um leve brilho. A 2.3s, por baixo, entra **"a programar desde 2019"** em Mona Sans,
letra pequena, tracking largo, cor `#b9bbad`.

Sequential/interaction: não — o traçado é uma animação contínua, não uma sequência de itens.
Audio intent: atenção contida; o som abre espaço em vez de ocupá-lo.
Audio-coupled idea: traçado da marca acompanhado de um único `bong_001` suave a ~0.4s.
Music: cama a entrar em fade-in, ainda baixa.
Transition mood: **soft crossfade** → Scene 2

### Scene 2 — O piloto — 5.47s

O retrato a cores de Mauro entra ao centro, grande, fundido suavemente sobre o verde. A 3.6s,
por cima do retrato, entra em Brier serifada **"Programador"** e em seguida, na linha seguinte,
**"Full-Stack"** com "Full-Stack" em Brier a condensar ligeiramente — é a manchete real do site.
A 4.4s começa o efeito assinatura: uma onda de meio-tom P&B desce do topo do retrato, cedendo
ao centro antes das bordas, varrendo a cor para P&B. O varrimento completa a 8.1s. A 7.4s,
em baixo à esquerda, assenta **"Mauro Ferreira"**.

Sequential/interaction: sim — "Programador" e "Full-Stack" entram em duas etapas, e o
varrimento P&B é uma progressão contínua que o viewer acompanha.
Audio intent: o momento do vídeo; a cama ganha presença sem subir de volume.
Audio-coupled idea: o início do varrimento alinha a ~4.4s; um `drop_001` discreto no início da
onda. Reatividade áudio-subtil: o lime do fundo respira com o RMS durante o varrimento.
Music: cama em plateau, ~0.35.
Transition mood: **soft crossfade** → Scene 3

### Scene 3 — A dualidade — 5.46s

O ecrã divide-se. Esquerda: **BACK END** em Brier, por baixo a linha real
**"APIs, bases de dados e a lógica de servidor que potencia tudo o que acontece nos bastidores."**
em Mona Sans, com "APIs" a bold. Direita: **FRONT END** em Mona Sans, com
**"Interfaces, animações e as experiências visuais que se tocam diretamente."**, "Interfaces" a bold.
Cada metade traz o seu retrato de suporte — P&B à esquerda, cores à direita.

Sequential/interaction: sim — o lado BACK END assenta primeiro (~9.0s) e o FRONT END chega em
seguida (~10.9s), cada um com a sua entrada. As duas frases ficam ambas visíveis até ao fim da
cena; nada sai antes de poder ser lido.
Audio intent: dois assentamentos limpos, como duas setas de arranque.
Audio-coupled idea: chegada do FRONT END alinhada a 10.93s (strong_beat 0.97), com um cue
discreto de UI. As frases completas têm hold pleno (~4.3s e ~3.4s) acima do piso de leitura.
Music: cama a manter, primeira metade estável.
Transition mood: **slide suave** → Scene 4

### Scene 4 — Os projetos e a assinatura — 5.99s

Título em cima: **"Projetos"** em Mona Sans seguido de **"Em Destaque"** em Brier, a lime.
Em baixo, as três tiles entram uma a cada ~0.9s, cada uma no seu enquadramento de balão de
conversa em traço lime: **RSLA Comercial** (2025) → **SafeBus** (em breve) → **Kamba Travel**
(em breve). A 18.0s as três estão assentadas. A 18.3s escreve-se a assinatura de Mauro por
baixo, e a 18.9s entra o CTA lime **"ver projetos"**. Corte para preto a 20.19s.

Sequential/interaction: sim — as três tiles chegam em sequência, como cartas distribuídas.
Audio intent: ritmo regular de chegada, depois repouso.
Audio-coupled idea: as três tiles alinhadas à grelha de beats (~15.29 / 16.38 / 17.47), com um
cue suave só na primeira e na última, para não poluir a sequência.
Music: cama a recolher; fade-out de 0.8s a partir de 19.4s.
Transition mood: **corte para preto**

**Music mood for this video:** steady, clean, confident — sem euforia, sem paródia.
**Audio summary:** uma cama limpa a 0.35 que cresce de presença (não de volume) no varrimento
do retrato, dois cues discretos a marcar a dualidade BACK/FRONT, três chegadas rítmicas nos
projetos, e um fade tranquilo na assinatura.
