# NBIS Tech Group: RSE Tools

## About

This repository compiles short walkthroughs on **Research Software Engineering (RSE) tools** useful for bioinformatics work at NBIS.

These walkthroughs are designed to be hands-on demonstrations, helping to build a shared foundation of knowledge and foster collaboration across all teams and affiliates. We aim to publish a new walkthrough every two weeks.

### Tech Group Leaders

These people are responsible for organizing the sessions and maintaining this repository:

- **Mahesh Binzer-Panchal**
- **Martin Dahlö**
- **Lucile Soler**
- **Cormac Kinsella**

---

## Where to Find the Walkthroughs

* **View Walkthroughs:** All walkthroughs are hosted on our dedicated website:
**[https://nbisweden.github.io/Training-Tech-shorts/](https://nbisweden.github.io/Training-Tech-shorts/)**
* **Check the Schedule:** See what's coming up next on the **[schedule page](https://nbisweden.github.io/Training-Tech-shorts/schedule.html)**.

---

## How It Works

Walkthroughs are short (~30 minutes) demonstrations, taught by volunteers from within the Tech group.
The sessions are then written up and shared here for future reference as blog posts.

### Target Audience

Our primary audience is **NBIS staff and affiliates**, both **bioinformaticians and managers**.

* **For Learners:** Provides regular, practical training on our core technology stack.
* **For Managers:** Highlights the importance of regular training and informs them of the teams' collective capabilities.

### Contributing & Suggesting Walkthroughs

We use **[GitHub Issues](https://github.com/NBISweden/Training-Tech-shorts/issues)** to manage the walkthrough pipeline:

1. **Suggest a Topic:** Create a new Issue to propose a tool or topic you'd like to see covered.
2. **Vote on Topics:** Use the reactions feature 👍 to upvote topics you're interested in.
3. **Volunteer to Teach:** Anyone can volunteer to prepare and demonstrate a walkthrough. You don't need to be an expert - just be willing to learn and share!
4. **Write it Up:** After the demo, the walkthrough should be written up as a blog post, which will be reviewed and published here. Anyone can contribute to the write-up.

### Further Discussion

Start a discussion on our **[Discussions page](https://github.com/NBISweden/Training-Tech-shorts/discussions)**
or reach out on the `#tech-group-rse-tools` channel on NBIS Slack.

---

## Further Reading

* [10 things software developers should learn about learning](https://cacm.acm.org/magazines/2024/1/278891-10-things-software-developers-should-learn-about-learning/fulltext)

## Rendering site locally

To build the site locally to preview changes, run the commands below. This assumes that you already have [pixi installed](https://pixi.sh/latest/installation/).

```bash
# clone the repo
git clone git@github.com:NBISweden/Training-Tech-shorts.git
cd Training-Tech-shorts

# install the dependencies
pixi install

# build and serve the site
pixi run quarto preview
```
