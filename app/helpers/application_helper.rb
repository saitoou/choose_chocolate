module ApplicationHelper
  def page_title(page_title = '', admin: false)
    base_title =  if admin
                   'Choose Cholate(管理画面)'
                  else
                    'Choose Cholate'
                  end

    page_title.empty? ? base_title : page_title + "|" + base_title
  end

  def default_meta_tags
    {
      site: 'choosechocolate',
      title: '疲れをチョコで癒す',
      reverse: true,
      charset: 'utf-8',
      separator: '|',
      description: 'あなたの疲れを取るチョコを選びます',
      keywords: 'チョコ, チョコレート, 癒し, 疲れ',
      canonical: request.original_url,
      noindex: ! Rails.env.production?,
      icon: [
        { href: image_url('favicon.ico') },
        { href: image_url('bar-chocolate.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
      ],
      og: {
        site_name: :site,
        title: :title,
        description: :description, 
        type: 'website',
        url: request.original_url,
        image: image_url('bar-chocolate.png'),
        locale: 'ja_JP',
      },
      twitter: {
        card: 'summary_large_image',
        site: '@s_a_ito_u',
        image: image_url('bar-chocolate.png')
      }
    }
  end
end
