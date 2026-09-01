# COS 433 / MAT 473: Cryptography

Static course website for COS 433: Cryptography at Princeton University. The repository keeps the current offering at the root and preserves previous offerings as permanent archives. It uses plain HTML and CSS, with no build step or server-side requirements.

## Repository structure

```text
index.html                 Fall 2026 current-offering page
style.css                  Shared styling for every offering
archive/fall-2025/         Complete Fall 2025 course website
archive/fall-2024/         Complete Fall 2024 course website
```

The root page currently contains a Fall 2026 placeholder because no Fall 2026 course details were available on the source website. Replace the placeholder as soon as the new course information is ready; do not copy old dates, staff, or policies forward without checking them.

## Preview locally

The simplest option is to open `index.html` directly in a browser. To preview it through a local web server instead, run this command from the repository directory:

```sh
python3 -m http.server 8000
```

Then visit `http://localhost:8000/`.

## Edit course information

All course content is in `index.html`.

- The Fall 2026 placeholder and links to previous offerings are in the root `index.html`.
- The complete Fall 2025 page is in `archive/fall-2025/index.html` and is a useful template for the new offering.
- Basic course information belongs in the `<section class="hero">` block near the top of an offering page.
- The course description and prerequisites belong in `<section id="overview">`.
- Staff names, office hours, and contact information belong in the `<dl class="course-facts">` list.
- Colors, spacing, typography, table layout, and mobile behavior are in `style.css`.

Keep substantive course wording unchanged unless the course staff intends to update the policy or course content itself.

## Update the schedule

Find `<section id="schedule">` in the relevant offering's `index.html`. Each lecture is one `<tr>` in the table body:

```html
<tr>
  <th scope="row"><time datetime="2025-09-02">9/2</time></th>
  <td>Introduction, Secret-Key Encryption.</td>
  <td><a class="material-link" href="SLIDES_URL">Lecture slides</a></td>
  <td>KL Chapter 1.</td>
</tr>
```

Copy an existing row to add a lecture. Update the machine-readable `datetime` value as well as the visible date. Use an em dash (`—`) when no material or reading is listed.

## Add or update problem sets

Find `<section id="problem-sets">` in the relevant offering's `index.html`. Each assignment is one `<tr>` with cells for the assignment name, release date, due date, and link. Copy an existing row, then change its name, dates, and URL. Keep the `datetime` values in `YYYY-MM-DD` format.

## Archive a semester

The root of the repository always represents the current offering. Before updating it for a new semester:

1. Create a directory such as `archive/fall-2026/`.
2. Copy the current `index.html` into that directory.
3. In the archived `index.html`, change the stylesheet link to `../../style.css`.
4. Commit the archive before changing the root course content.
5. Update the semester, dates, staff, policies, assignments, and schedule in the root `index.html`.

The archived offering will then be available at `/archive/fall-2026/` while the repository root remains the current course site.

## Publish with GitHub Pages

1. Create a GitHub organization, such as `princeton-cos433`.
2. In that organization, create a **public** repository named exactly `<organization-name>.github.io`.
3. Push these files to the repository's default branch (normally `main`).
4. In the repository, open **Settings → Pages**.
5. Under **Build and deployment**, choose **Deploy from a branch**.
6. Select the default branch and the `/ (root)` directory, then save.

GitHub will publish the site at `https://<organization-name>.github.io/`. No GitHub Actions workflow or custom build command is required.

Before every publish, verify that the repository contains no student information, grades, private solutions, API keys, or other private course material.
