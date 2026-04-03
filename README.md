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
- authorshort
- bio-card
- blockquote
- definition
- footer
- head
- heading
- imgwithcaption
- inpageTOC
- pagenav
- spoiler
- toaccordion

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
