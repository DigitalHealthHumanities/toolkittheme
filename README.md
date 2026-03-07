# jekyll-toolkit-theme

This theme is designed to help you jumpstart your own responsive learning GitHub Pages site. Add your lesson plans and have your students be able to learn asynchronously for free!

## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-toolkit-theme"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: jekyll-toolkit-theme
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-toolkit-theme

## Usage

### Includes
- authorshort
- definition
- footer
- head
- heading
- inpageTOC
- pagenav
- toaccordion

### Layouts
- bio
- lesson
- lessongroup
- page
- post
- section
- sublesson

### Unique Sass Classes
- .term - bold and change the color of your key term(s)
- .highlighter - highlight key text in L3 Yellow (#FEB80A)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/DigitalHealthHumanities/toolkittheme. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](https://www.contributor-covenant.org/) code of conduct.

## Development

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be bundled.
To add a custom directory to your theme-gem, please edit the regexp in `jekyll-toolkit-theme.gemspec` accordingly.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
