# inline_highlight

A tag for inline syntax highlighting in Jekyll.

[Jekyll](http://jekyllrb.com) has a syntax-highlighting facility that you can invoke with the “highlight” tag:

    It looks like you just forgot to include

    {% highlight python %}
    from random import random
    {% endhighlight %}
    
    at the top of your file.

Unfortunately this syntax highlighting can’t be used in the middle of a paragraph: it always starts a new `<figure>` in the generated HTML. The inline_highlight plugin provides an “ihighlight” tag that works in the same way as the built-in “highlight” tag except that it wraps the highlighted code within a `<code>` instead of a `<figure>`. You can use the tag like this:

    It looks like you just forgot to include {% ihighlight python %} from random
    import random {% endihighlight %} at the top of your file.

## Installation

The easiest way to install this plugin is to copy the [jekyll_inline_highlight.rb file](lib/jekyll_inline_highlight.rb) to a folder named “\_plugins” in your Jekyll project.

For more detailed instructions, see the [“installing a plugin”](https://jekyllrb.com/docs/plugins/#installing-a-plugin) section of the Jekyll documentation.

## Usage

The “ihighlight” tag uses whichever syntax highlighter (Pygments or Rouge) you have specified in your site’s “\_config.yml”. (It also accepts the same options as the built-in “highlight” tag, although at the moment the only such option turns on line numbering, which is probably not something you want in your inline code.)

The “ihighlight” tag produces HTML that has the following structure:

    <code class="highlight">
        ...
    </code>

By contrast, the “highlight” tag produces HTML like this:

    <figure class="highlight">
        <pre>
            <code>
                ...
            </code>
        </pre>
    </figure>

If you have custom CSS set up for syntax highlighting then you can just create a rule for `.highlight` to catch both forms. The “...” is identical in both cases. (There are some additional attributes added to the `<code>` element, but I’ve omitted them above because they aren’t part of the inline_highlight public API.)

## Author

This plugin was created by [Benjamin Esham](https://esham.io).

This project is [hosted on GitHub](https://github.com/bdesham/inline_highlight). Please feel free to submit pull requests.

## Version history

The version numbers of this project conform to [Semantic Versioning 2.0](http://semver.org/).

* 3.0 (2015-11-03): The plugin now works with Jekyll 3.0.x; it no longer works with Jekyll 2.x.
* 2.0 (2015-02-07): Placing a line break before the `ihighlight` tag would incorrectly start a new paragraph. Thanks to [iosdev-republicofapps](https://github.com/iosdev-republicofapps) for the fix!
* 1.0 (2014-12-14): Initial release.

## License

This script is based on code from Jekyll, which is released under the MIT license as described in [the project’s LICENSE file](https://github.com/jekyll/jekyll/blob/master/LICENSE).

The original portions of this plugin are hereby released into the public domain. To the extent possible, the author places no restrictions upon their use, modification, or redistribution.
