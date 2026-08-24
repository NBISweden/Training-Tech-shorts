# AGENTS.md

Instructions for any coding agent writing or reviewing content in this
repository. Human contributors should read [write-up.qmd](write-up.qmd)
and [contributing.qmd](contributing.qmd) instead — this file exists so
an agent doesn't have to be re-briefed on repo conventions and writing
standards every session.

## About this repository

NBIS Tech Group: RSE Tools — short (~30-40 minute) walkthroughs on
Research Software Engineering tools, each first given as a live talk
with a demo, then written up as a blog post for
[the site](https://nbisweden.github.io/Training-Tech-shorts/). Audience
is NBIS staff and affiliates, mostly bioinformaticians, with a wide
range of prior experience with any given topic — some attendees are
complete beginners to it, others already use it daily.

## Repository conventions

- **Posts** live at `posts/YYYY-MM-DD-title-of-walkthrough/index.qmd`
  (Quarto Markdown), with images in a sibling `images/` directory and
  other assets in their own named directory. See
  [write-up.qmd](write-up.qmd) for the full authoring workflow.
- **Frontmatter** needs `title`, `date`, `date-modified: last-modified`,
  `author`, and `categories`. Add `draft: true` for a post that hasn't
  been given/scheduled yet — Quarto renders it in `quarto preview` but
  excludes it from the published site's listings and navigation
  (https://quarto.org/docs/websites/website-drafts.html). Remove the
  `draft` field only once the session has actually been given and the
  content and date are settled — don't remove it just because the
  writing is finished.
- **Branches** for a new post use `walkthrough/descriptive-name`, per
  [write-up.qmd](write-up.qmd).
- **Preview locally** with `quarto preview` (or `pixi run preview`).

## Writing and reviewing walkthrough posts

These are standing rules for this repo's posts, in addition to whatever
the human author asks for on a given draft. They're grounded in
learning-science and technical-writing research — see
[References](#references) — not house-style opinion, so don't relax
them without a reason that would also count as a reason in that
literature.

### Standing rules

1. **Terse prose.** Follow the
   [Google Developer Documentation Style Guide](https://developers.google.com/style)
   [[10]](#references): short declarative sentences, active voice, no
   hedges or meta-commentary ("it's worth noting," "note that," "worth
   X-ing"). State the fact or rule directly instead of narrating that
   you're about to explain it.
2. **British English spelling** in prose (behaviour, summarise,
   organise). Never touch code identifiers, CLI flags, package names, or
   established field terminology, even where it's American-spelled — a
   tool's actual name or a field's standard term isn't a prose choice to
   "correct."
3. **Each post stands alone.** No forward references within a post
   ("as shown below," "we'll cover this later") — state the fact where
   it's needed, or reorder so the explanation comes first. Don't link
   from one post to another `posts/*/index.qmd` that still has
   `draft: true`, framed as a prerequisite or "see also" — that post's
   content and timing aren't settled yet. A post with no `draft` field
   (already given) is safe to link to normally. External links (official
   docs, tool sites, GitHub issues) are unaffected.
4. **Scope to the session, not to the topic.** A post supports a
   ~30-40 minute talk with a live demo — it is not a reference manual
   for the tool. Implementation minutiae (every config key, every edge
   case, every internal mechanism name) belong in the live demo, not in
   written prose. See the checklist below for how to catch this.

### The review checklist

Run structural checks before line-editing — they catch whole-section
problems sentence-level fixes can't reach. Numbers in brackets are full
citations in [References](#references).

1. **Mode check.** Per the Diátaxis framework [[5]](#references),
   documentation has four distinct modes: tutorial, how-to, reference,
   explanation. A walkthrough post is tutorial+explanation (attendees
   learn by following a demo, and need the "why"). Any paragraph that
   reads as "here's the complete set of X" has drifted into reference
   mode — rewrite as one representative example plus a link, don't just
   shorten the enumeration in place.
2. **Task check.** Per Carroll's minimalism
   [[4]](#references), does this paragraph support something the
   attendee is about to do or understand right now? A true, accurate
   fact that supports no immediate step is still a cut. Prefer noting
   how to recognise and recover from a problem over exhaustively
   enumerating every way it could occur in advance.
3. **Narrative-arc check.** Does the post's section order read as a
   line — tension then resolution, concept then consequence — rather
   than a flat topic list? (Practitioner-level guidance, e.g. Atkinson
   [[8]](#references); use as a tiebreaker, not a hard rule.)
4. **Artifact-vs-narration check.** For anything demoable, keep the one
   canonical working artifact written out in full (the exact command,
   the complete config) — a live demo is bad at leaving attendees
   something to copy afterward, so that part earns its place in prose.
   But cut narration of internal branches, alternate paths, or edge
   cases; show those live instead of enumerating them.
5. **Coherence check.** Per Mayer's coherence principle
   [[3]](#references) — the largest-effect-size of his multimedia
   learning principles — if deleting a sentence doesn't weaken the point
   it sits in, delete it, regardless of whether it's true or
   interesting.
6. **Justification-clause check.** A specific, common case of #1/#5:
   watch for "X, because Y" or "this matters because Y" where Y is a
   fact not otherwise needed near this sentence. Cut Y, or move it to
   where it's actually needed instead.
7. **Signaling check.** Per Mayer's signaling principle
   [[3]](#references), a list mixing universal concepts and
   product-specific names needs one sentence up front saying which is
   which.
8. **Split-attention check.** Per Chandler & Sweller
   [[2]](#references), a code block's explanation must sit adjacent to
   it. Flag any later paragraph that requires re-holding an earlier code
   block in memory ("as configured above").
9. **Redundancy check.** Per Mayer's redundancy principle
   [[3]](#references), where a demo will show something verbatim
   on-screen, prose shouldn't re-derive or re-explain it field-by-field —
   name only what matters.
10. **Curse-of-knowledge check.** Run an independent, no-context
    beginner read on the draft, not just the author's own re-read —
    fluency with a topic hides the gaps in your own explanation of it
    [[7]](#references).
11. **Expertise-reversal check.** Per Kalyuga
    [[6]](#references), heavy scaffolding that helps a novice can
    actively cost an expert reading the same sentence. For a
    mixed-audience post, keep beginner aids skippable in under a
    second — a short parenthetical an expert's eye slides past — rather
    than a separate explanatory sentence.
12. **Density re-check after any accuracy fix.** Correcting a factual
    error tends to add supporting detail, not remove it. Immediately
    after fixing a wrong claim, re-scan that specific paragraph against
    checks 1, 4, and 5 — don't assume correctness was the only thing
    that changed.
13. **Retrieval-framing check.** Per the testing effect
    [[9]](#references), actively recalling information beats re-reading
    it for retention. Where practical, phrase the 1-2 most important
    "Key takeaways" so the presenter can pose them as a live question to
    the room, not only state them as a fact for the reader.
14. **Accuracy pass.** Verify commands, config, model/tool names, and
    behavior against current official docs — this space goes stale
    fast. Don't rely on training-data recall for anything version- or
    date-sensitive.
15. **Style pass.** Apply the standing rules above (terse prose, British
    spelling). Run this last — it's the cheapest to fix and shouldn't
    gate the structural checks above it.

### Recommended review process

For a non-trivial draft, run two independent reviews rather than one
self-review, since check 10 above specifically requires it:

- **A beginner-lens pass** — read with no assumed prior knowledge of the
  topic, checking flow, jargon scaffolding, and pacing (checks 1, 3, 7,
  10, 11).
- **An expert-lens pass** — verify factual/technical claims against
  current official sources (check 14).

Then run a **scope pass** over the result specifically for checks 1, 4,
5, and 12.

## References

1. Cognitive load theory (Sweller) — working memory capacity is limited,
   and load splits into intrinsic, extraneous, and germane categories.
   https://en.wikipedia.org/wiki/Cognitive_load
2. Split-attention effect (Chandler & Sweller, 1992) — separating a
   diagram or code block from the text explaining it forces the reader
   to hold one in memory while processing the other, at a measurable
   cost to learning.
   https://en.wikipedia.org/wiki/Split-attention_effect
3. Multimedia learning principles (Mayer) — coherence, signaling,
   redundancy, and spatial/temporal contiguity reduce extraneous
   cognitive load; effect sizes for these are among the largest and most
   replicated in the instructional-design literature (coherence and
   redundancy ~0.86, spatial/temporal contiguity >1.0).
   https://www.cambridge.org/core/books/abs/cambridge-handbook-of-multimedia-learning/principles-for-reducing-extraneous-processing-in-multimedia-learning-coherence-signaling-redundancy-spatial-contiguity-and-temporal-contiguity-principles/CD5B7AE1279A9AB81F8EEBB53DBEC86E
4. Minimalism in technical communication (Carroll, *The Nürnberg
   Funnel*) — task-oriented instruction that supports real tasks
   immediately, and treats errors as something to recognise and recover
   from rather than prevent through exhaustive up-front explanation.
   https://en.wikipedia.org/wiki/Minimalism_(technical_communication)
5. The Diátaxis framework — documentation has four distinct modes
   (tutorial, how-to guide, reference, explanation), each meant to stay
   separate.
   https://diataxis.fr/
6. Expertise reversal effect (Kalyuga) — instructional support that
   helps a novice can have negative consequences for a more experienced
   learner reading the same material.
   https://en.wikipedia.org/wiki/Expertise_reversal_effect
7. The curse of knowledge, applied to documentation — writers
   overestimate what readers already know because their own fluency
   makes the material feel self-evident; independent review by someone
   matching the audience is the standard mitigation.
   https://docsbydesign.com/2022/01/30/how-to-not-suffer-the-curse-of-knowledge/
8. *Beyond Bullet Points* (Atkinson) — presentations built around a
   narrative arc (setup, complication, resolution) read more clearly
   than a flat list of topics. Practitioner source, not a peer-reviewed
   study — used here as a tiebreaker, not a hard rule.
   https://www.microsoftpressstore.com/articles/article.aspx?p=2916274
9. The testing effect (Roediger & Karpicke, 2006) — actively retrieving
   information produces better long-term retention than passive
   re-study or re-reading.
   https://journals.sagepub.com/doi/10.1111/j.1467-9280.2006.01693.x
10. Google Developer Documentation Style Guide — editorial guidelines
    for technical documentation, including tone, voice, and conciseness.
    https://developers.google.com/style

One heuristic in the checklist above (item 4, preserving one canonical
artifact over narrating live-demo internals) reflects general live-demo
practice rather than a specific verified study — flagged here rather
than attached to an uncertain citation, per the standard of only citing
sources that were actually checked to support their claim.
