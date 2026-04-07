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
    Ex: ```{% include definition.html term="WYSIWYG" definition="What You See Is What You Get" %}```

- *footer - creates the footer for the site - can customize links that appear in the _config.yml file. Present in default layout

- *groupterm - displays key terms for a given sublesson in a box to the right of the main text for desktops and tablets, at the bottom for phones. Takes information from _data/terms.yml, with sublessons identified by their permalink. See sample terms.yml file for a demonstration of layout. Present in sublesson layout. If no terms present in the YAML file, this graphic does not display.
    terms.yml Ex: 
    /lessons/databasics/commandline/4:
    - term: "Textual Analysis"
        definition: "Textual analysis (or text analysis for short) refers to any method that examines large amounts of text using computational tools. Text analysis historically was used to count the use of specific words, and look at their context with other words. More contemporary text analysis uses large language models and machine learning to develop more complex groupings of interrelated words (topic modelling) or weight texts based on the positive or negative affect of words used (sentiment analysis)."

    - term: "Data Cleaning"
        definition: "Often we have to make the files we are using in our digital research compatible with our platforms. We have to deal with any errant mistakes or issues with those data sources. Removing the unnecessary information in data files is known as data cleaning."

- *heading - displays the page's header. Pulls navigation labels and links from the _config.yml file's 'menu' section. Update site title in _config to update the title in the header. See the "Lessons" label for an example of how to set up a drop down.

- imgwithcaption - formats and displays an image with a caption and an alt description. Takes filepath (location of image), alt ([image alt text] (https://accessibility.uiowa.edu/alt-text)), and caption. Resizes to fit screen. 
    Ex: ```{% include imgwithcaption.html filepath="/assets/img/screenshot" alt="Intern programming the README" caption="Intern ahutnick working on this line of code" %}```

- inpageTOC - pulls lessons with the same structurehead (theme) into a table of contents - can be added to the sublesson layout.
    Ex: ```{% include inpageTOC.html %}```

- *pagenav - adds navigation buttons to the bottom of the sublesson, including navigation through Windows / Mac lesson splits - present in sublesson layout

- spoiler - takes title (required), image (optional), alt (optional), caption (optional) and answer (optional). Displays accordion where once the user clicks on the title, the image and / or answer text display. 
    Ex: ```{% include spoiler.html title="Did this work?" image="/assets/img/thumbsup.jpg" alt="thumbs up" caption="Wikimedia Foundation" answer="Yes" %}```

- term - takes term from the terms.yml file, increases font weight, changes color to navy, and adds link to the groupterm include on the page
    Ex: ```{% include term.html term="Digital Health Humanities" %}```

- *toaccordion - takes the lessons and sublessons from a lesson group and creates an accordion within an accordion. Users can click on sublesson links to navigate. Built into the lessongroup layout.

*Built into theme layouts



### Layouts
- bio - creates a page for a contributor's bio. If you'd like to display all contributors on the same page, use include bio-card 
    Attributes:
        - name - contributor name
        - affiliation - contributor's location / organization (i.e. University of San Francisco)
        - headshot (img)
        - association - what role did the contributor play?
        - bio - contributor's background
        - projecttitle - contributor's project title (if applicatble)
        - projectblurb - contributor's project description (if applicable)
        - permalink

- default - the base layout for all pages. Every other layout is built off of this one. Contains the HTML head, header, and footer. If you're creating a new layout, use default. If you need to update the default page, create a copy in your repository and edit.

- lesson - lists and links to the sublessons within a particular chapter (or "lesson")
    Attributes:
        - title
        - abstract
        - group - lessongroup identifier
        - structurehead - lesson identifier
        - permalink

- lessongroup - page for a series of lessons comprising a particular theme. Lists lessons and sublessons in a nested accordion, including links to each sublesson
    Attributes:
        - group - lessongroup identifier - should be the same for lessongroup and associated lessons / sublessons
        - title
        - description
        - permalink

- paper - for publishing papers / similarly written content. Starts with the title, author name, and description. In the md / HTML file, add in the paper's contents.
    Attributes:
        - title
        - author
        - description
        - permalink

- section - displays and links to all lessons / sublessons
    Attributes:
        - title
        - permalink

- sublesson - the most in depth breakdown of a concept / the smallest lesson unit. If associated terms are present in terms.yml, a Key Terms block will appear to the right of the main text (below the main text on mobile). Navigation buttons appear at the bottom of the page.
    Attributes:
        - structurehead: lesson identifier. Should be consistent across all sublessons in the lesson
        - title
        - abstract
        - group - group identifier. Should be consistent across all lessons and sublessons within the lessongroup.
        - nest:
            Options:
                - none - default 
                - mac - Mac variant of a lesson
                - pc - PC variant of a lesson
                - header - the lssons after this one will split into Mac / PC variants
        - lessonnumber - lesson order integer. If you were to list out all of the lessons in order, where would you want this lesson?
            Ex: 3
        - lessonprint - String containing the number / integer that appears in the title
            Ex: 1, "2a.1"
        - previouslesson - if applicable, permalink to previous lesson
        - nextlesson - if applicable, permalink to next lesson. Does not apply if the next lesson is split into Mac / PC
        - split - does the next lesson have Mac / PC variants? "split" == Yes / "none" == No
        - splitmac - permalink for Mac variant of the next lesson if applicable. Can be left out if not applicable.
        - splitpc - permalink for PC variant of the next lesson if applicable. Can be left out if not applicable.
        - authors
        - permalink

### Unique Sass Tags / Classes
- .backsplash - provides a pale blue backsplash behind the text within the div for emphasis
    i.e. ```<div class="backsplash">Plain white pages are boring!</div>"```
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
