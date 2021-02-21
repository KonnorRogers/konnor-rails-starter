# frozen_string_literal: true

# Useful methods for dealing with images
module Imageable
  def inline_svg(filename, **options)
    filepath = File.join(Rails.root, 'public', asset_pack_path("media/images/#{filename}.svg"))

    Rails.cache.fetch(filepath) do
      file = File.read(filepath)
      doc = Nokogiri::HTML::DocumentFragment.parse file
      svg = doc.at_css 'svg'

      options.each { |attr, value| svg[attr.to_s] = value }

      doc.to_html.html_safe
    end
  end

  # @param filepath [String] A filepath with an extension. Will automatically search for webp
  def picture_tag(filepath, **options)
    path = proc { |path_to_asset| asset_pack_path(File.join("media/images/#{path_to_asset}")) }

    webp_file = path.call(to_webp(filepath))

    tag.picture do
      concat(
        tag.source(srcset: webp_file, type: 'image/webp') +
        image_pack_tag(filepath, **options)
      )
    end
  end

  def to_webp(filepath)
    basename = File.basename(filepath, '.*')
    dirname = File.dirname(filepath)

    if dirname == '.'
      dirname = ''
    else
      dirname += '/'
    end

    File.join("#{dirname}#{basename}.webp")
  end
end
