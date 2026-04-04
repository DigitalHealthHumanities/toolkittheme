# jekyll-toolkit-theme

This theme is designed to help you jumpstart your own responsive learning GitHub Pages site. Add your lesson plans and have your students be able to learn asynchronously for free!

## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-remote-theme"
gem 'digitalhealthhumanities-toolkit-theme', '~> 0.1.9' (or current version of theme)
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
remote_theme: DigitalHealthHumanities/toolkittheme

plugins:
  - jekyll-remote-theme
```

And then execute:

    $ bundle

## Usage

### Includes
- *authorshort - provides author name and association for each lesson - present in the sublesson layout
- bio-card - takes author page, adds contributor headshot (or default image if present at "/assets/img/default-profile-img.jpg") as well as author bio in a scrollable text box 
    Ex: ```{% for author in authors %} {% include author person=author %} {% endfor %} ```
- blockquote - takes quote (required), author (optional), and title (optional) and will generate a blockquote graphic with a pale blue background
    Ex: ```{% include blockquote.html quote="It is well known that a vital ingredient of success is not knowing that what you're attempting can't be done." author="Sir Terry Pratchett" title="Equal Rites" %}```
- definition - takes term and definition and creates a key term graphic that can be inserted in page. Can also be used to call attention to an important concept.
    Ex: ```{% include definition.html term="WYSIWYG", definition="What You See Is What You Get" %}```
- *footer - creates the footer for the site - can customize links that appear in the _config.yml file. Present in default layout
- *groupterm - displays key terms for a given sublesson in a box to the right of the main text for desktops and tablets, at the bottom for phones. Takes information from _data/terms.yml, with sublessons identified by their permalink. See sample terms.yml file for a demonstration of layout. Present in sublesson layout. If no terms present in the YAML file, this graphic does not display.
- *head - contains page metadata. Present in default layout
- *heading - displays the page's header. Pulls navigation labels and links from the _config.yml file's 'menu' section. Update site title in _config to update the title in the header. See the "Lessons" label for an example of how to set up a drop down.
- imgwithcaption - formats and displays an image with a caption and an alt description. Takes filepath (location of image), alt ([image alt text] (https://accessibility.uiowa.edu/alt-text)), and caption. Resizes to fit screen. 
    Ex: ```{% include imgwithcaption.html filepath="/assets/img/screenshot" alt="Intern programming the README" caption="Intern ahutnick working on this line of code" %}```
- inpageTOC - pulls lessons with the same structurehead (theme) into a table of contents - can be added to the sublesson layout.
    Ex: ```{% include inpageTOC.html %}```
- *pagenav - adds navigation buttons to the bottom of the sublesson, including navigation through Windows / Mac lesson splits - present in sublesson layout
- spoiler - takes title (required), image (optional), alt (optional), caption (optional) and answer (optional). Displays accordion where once the user clicks on the title, the image and / or answer text display. 
    Ex: ```{% include spoiler.html title="Did this work?" image="assets/img/thumbsup.jpg" alt="thumbs up" caption="Wikimedia Foundation" answer="Yes" %}```
- term - takes term from the terms.yml file and adds link to the groupterm include on the page
    Ex: ```{% include term.html term="Digital Health Humanities" %}```
- *toaccordion

*Built into theme layouts



### Layouts
- bio
- default
- lesson
- lessongroup
- paper
- post
- section
- sublesson

### Unique Sass Tags / Classes
- code - display code as center-aligned white text on black background
    - i.e. 
    ``` <code>print('Hello World!')</code> ```
- .highlighter - highlight key text in L3 Yellow (#FEB80A)
    - i.e. ``` <span class="highlighter">Info to emphasize</span>```
- .term - bold and change the color of your key term(s)
    - i.e. ``` <span class="term">floccinaucinihilipillification</span> ```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/DigitalHealthHumanities/toolkittheme. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](https://www.contributor-covenant.org/) code of conduct.

## Development

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be bundled.
To add a custom directory to your theme-gem, please edit the regexp in `DigitalHealthHumanities-toolkit-theme.gemspec` accordingly.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
