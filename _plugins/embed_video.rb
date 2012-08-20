# usage: {% embed_video http://url/for/video %}
# or: {% embed_video http://url/for/video width=250 height=100 %}

module Jekyll
  class EmbedVideoTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @url, @attrs = text.split($;, 2)
      @url.gsub!(/["']?(.*?)["']?$/, '\1')
    end

    def render(context)
      "<video class='video-embed' src='#{@url}' #{@attrs}> </video>
<p class='video-download'>
<a href='#{@url}'>Download Video</a> &mdash;
<a href='https://catalyst.uw.edu/webq/survey/grigg/176158'>Problems viewing?</a>
</p>"
    end
  end
end

Liquid::Template.register_tag('embed_video', Jekyll::EmbedVideoTag)
