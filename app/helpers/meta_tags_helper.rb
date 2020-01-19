module MetaTagsHelper
  def meta_title
    default = 'Plan Less, Go Out More'

    tagline = content_for?(:title) ? content_for(:title) : default

    ['Planeo', tagline].join(' - ')
  end
end
