# inline_highlight
#
# A tag for inline syntax highlighting in Jekyll
#
# https://github.com/bdesham/inline_highlight
#
# Copyright (c) 2014-2015, Tom Preston-Werner and Benjamin Esham
# See README.md for full copyright information.

module Jekyll
	class InlineHighlightBlock < Tags::HighlightBlock

		def add_code_tag(code)
			code = code.sub(/<div.*?><pre>\n*/, '<code class="highlight language-' + @lang.to_s.gsub("+", "-") + '" data-lang="' + @lang.to_s + '">')
			code = code.sub(/\n*<\/pre><\/div>/, "</code>")
			code.strip
		end

		def render(context)
			super.strip
		end
	end
end

Liquid::Template.register_tag('ihighlight', Jekyll::InlineHighlightBlock)
