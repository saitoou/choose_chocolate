module ApplicationHelper
  def page_title(page_title = '', admin: false)
    base_title =  if admin
                   'Choose Cholate(管理画面)'
                  else
                    'Choose Cholate'
                  end

    page_title.empty? ? base_title : page_title + "|" + base_title
  end
end
