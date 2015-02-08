# inline\_highlight

A tag for inline syntax highlighting in Jekyll.

[Jekyll](http://jekyllrb.com) has a syntax-highlighting facility that you can invoke with the “highlight” tag:

    It looks like you just forgot to include

    {% highlight python %}
    from random import random
    {% endhighlight %}
    
    at the top of your file.

Unfortunately this syntax highlighting can’t be used in the middle of a paragraph: it always starts a new `<div>` in the generated HTML. The inline\_highlight plugin provides an “ihighlight” tag that works in the same way as the built-in “highlight” tag except that it wraps the highlighted code within a `<code>` instead of a `<div>`. You can use the tag like this:

    It looks like you just forgot to include {% ihighlight python %} from random
    import random {% endihighlight %} at the top of your file.

## Installation

Copy `inline_highlight.rb` to your Jekyll site’s `_plugins` folder.

## Usage

The “ihighlight” tag uses whichever syntax highlighter (Pygments or Rouge) you have specified in your site’s “\_config.yml”. (It also accepts the same options as the built-in “highlight” tag, although at the moment the only such option turns on line numbering, which is probably not something you want in your inline code.)

The “ihighlight” tag produces HTML that has the following structure:

    <code class="highlight">
        ...
    </code>

By contrast, the “highlight” tag produces HTML like this:

    <div class="highlight">
        <pre>
            <code>
                ...
            </code>
        </pre>
    </div>

If you have custom CSS set up for syntax highlighting then you can just create a rule for `.highlight` to catch both forms. The “...” is identical in both cases. (There are some additional attributes added to the `<code>` element, but I’ve omitted them above because they aren’t part of the inline\_highlight public API.)

## Versioning

The version numbers of this project conform to [Semantic Versioning 2.0](http://semver.org/).

* 2.0 (2015-02-07): Placing a line break before the `ihighlight` tag would incorrectly start a new paragraph. Thanks to [iosdev-republicofapps](https://github.com/iosdev-republicofapps) for the fix!
* 1.0 (2014-12-14): Initial release.

## Author

This plugin was created by [Benjamin Esham](http://esham.io).

This project is [hosted on GitHub](https://github.com/bdesham/inline_highlight). Please feel free to submit pull requests.

## License

This script is based on code from Jekyll, which is released under the MIT license as described in [the project’s LICENSE file](https://github.com/jekyll/jekyll/blob/master/LICENSE).

The original portions of this plugin are hereby released into the public domain. To the extent possible, the author places no restrictions upon their use, modification, or redistribution.
