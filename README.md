# Middleman::Alias

Add alias/redirect information to your middleman pages and posts.

## Installation

Add this line to your application's Gemfile:

    gem 'middleman-alias'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install middleman-alias

## Usage

First you need to activate the module in your `config.rb`.

```
activate :alias
```

Then you need to generate the template that will handle the aliases.
You only need to do this one time.

```
middleman alias_template
```

Then you can add an `alias` to the frontmatter for a page or post and
middleman-alias will generate a SEO friendly redirect page at that
location.

Say that you have a page at `/foo.html`, but that the page used to live
at `/old-foo.html`.  In the frontmatter for `foo.html` you can alias it
to the old address.

```
title : "A post about foo"
alias : /old-foo.html
```

Now someone can visit your middleman site at `/old-foo.html` and they'll
be redirected to `/foo.html`.

## Contributing

1. Fork it ( http://github.com/<my-github-username>/middleman-alias/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
