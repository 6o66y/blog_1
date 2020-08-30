module MarkdownHelper

  def markdown(text)
  	options = {
  	  hard_wrap: true,
  	  filter_html: true,
  	  space_after_headers: true

  	}

  	extensions = {
  	  fenced_code_blocks: true,
  	  lax_spacing: true,
  	  autolink: true,
  	  no_intra_emphasis: true,
  	  superscript: true,
  	  underline: true,
  	  footnotes: true,
  	  fenced_code_blocks: true,
  	  tables: true
  	}

  	renderer = Redcarpet::Render::HTML.new(options)
  	markdown = Redcarpet::Markdown.new(renderer, extensions)
  	markdown.render(text).html_safe
  end
end