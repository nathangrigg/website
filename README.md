# About

These are the jekyll input files for my academic website. It is mostly static pages, with blog-like peices in some sections to act as course announcements. Layout is partly based on the website of [David Sanson](https://github.com/dsanson/dsanson.github.com)

# Yaml headers

Here is a description of the yaml headers that I use throughout the site.

### Standard

- `layout`: Layout file to use
- `permalink`:  Filename. Note if there is no extension (e.g. `info`), then the file is called `index.html` inside the appropriate directory.

### Title information

The html title is set to `$(title) - $(titlesuffix)` if both are set. If only one is set, then the hyphen is not inserted. It is useful to set `titlesuffix` of a section of the site (like a specific course) and then leave `title` off of the main page, so that the suffix becomes the title. If you use the variable `htmltitle`, this becomes the html title of the page, regardless of what else is set. In summary:

- `title`: The title of the post or page. For post-like pages, this should be shown below the main site header.
- `titlesuffix`: Suffix to be appended to the html title.
- `htmltitle`: overrides the html title calculation and makes this the one true html title.


### Navigation stuff

- `sections`: A list of navigational items to be shown in the nav bar. Case sensitive.
- `section`: The section of the current page, used to highlight the section in the nav bar. Case insensitive.
- `base`: The base (relative to `site.url`) of the group of pages that have this nav bar. Used to create the links in the nav bar.
- `coursetitle`: The title of the course. Used as title in the nav bar/header for anything using the `nav-course` nav bar.

### Misc

- `keywords`: Used to set meta keywords
- `description`: Used to set a meta description
- `feed`: Used to set the feed address, which is put into a `<link rel="alternate"...>`.
- `mathjax`: If set to true, this page will load the mathjax javascript
- `sitemap`: If set to false, this page will not show up in the sitemap
