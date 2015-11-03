Gem::Specification.new do |s|
	s.name				= 'jekyll_inline_highlight'
	s.version			= '3.0'
	s.date				= '2015-11-03'

	s.author			= 'Benjamin Esham'
	s.email				= 'benjamin@esham.io'
	s.homepage		= 'https://github.com/bdesham/inline_highlight'
	s.license			= 'Public domain'

	s.summary			= 'Liquid tag for inline syntax highlighting in Jekyll.'
	s.description	= 'A Liquid tag for inline syntax highlighting in Jekyll.'

	s.files				= ['lib/jekyll_inline_highlight.rb']

	s.add_runtime_dependency('jekyll', '~> 3.0')
end
