::Page.reset_column_information
# Check whether all columns are applied yet by seo_meta.
unless !defined?(::SeoMeta) || ::SeoMeta.attributes.keys.all? { |k|
  ::Page.translation_class.instance_methods.include?(k)
}
  # Make pages model seo_meta because not all columns are accessible.
  ::Page.translation_class.send :is_seo_meta
end

page_position = -1

home_page = Page.create(:title => "О компании",
            :deletable => false,
            :link_url => "/",
            :position => (page_position += 1))
home_page.parts.create({
              :title => "Body",
              :body => "<p>Welcome to our site. This is just a place holder page while we gather our content.</p>",
              :position => 0
            })
home_page.parts.create({
              :title => "Side Body",
              :body => "<p>This is another block of content over here.</p>",
              :position => 1

            })
home_page_position = -1
page_not_found_page = home_page.children.create(:title => "Page not found",
            :menu_match => "^/404$",
            :show_in_menu => false,
            :deletable => false,
            :position => (home_page_position += 1))
page_not_found_page.parts.create({
              :title => "Body",
              :body => "<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href='/'>Return to the home page</a></p>",
              :position => 0
            })
forum_page = Page.create(:title => "Форум",
            :deletable => false,
            :link_url => "/forum",
            :position => (page_position += 1))
forum_page.parts.create({
              :title => "Форум",
              :body => "<div class='about'><table><tbody><tr><td><h1>О компании</h1><p>«Вершина успеха» - это 16-этажный жилой дом премиум-класса, образец респектабельности, функциональности и комфорта. Каждая из 105 квартир этого элитного дома гармонично сочетает в себе атмосферу домашнего уюта и в то же время самые современные технологии и отделочные материалы.<br/>Дом расположен в одном из самых респектабельных и экологически чистых районов Севастополя, в пяти минутах езды от центра города и в то же время окружен со всех сторон парковой зоной: в непосредственной близости от объекта находится Национальный музей-заповедник Херсонес Таврический, поэтому такое расположение можно назвать уникальным.</p></td><td><img src='/images/about_us_logo.png' /></td></tr></tbody></table></div>",
              :position => 0
            })


about_us_page = Page.create(:title => "Контакты",
            :deletable => false,
            :position => (page_position += 1))
about_us_page.parts.create({
              :title => "Контакты",
              :body => "<div class='about'><table><tbody><tr><td><h1>О компании</h1><p>«Вершина успеха» - это 16-этажный жилой дом премиум-класса, образец респектабельности, функциональности и комфорта. Каждая из 105 квартир этого элитного дома гармонично сочетает в себе атмосферу домашнего уюта и в то же время самые современные технологии и отделочные материалы.<br/>Дом расположен в одном из самых респектабельных и экологически чистых районов Севастополя, в пяти минутах езды от центра города и в то же время окружен со всех сторон парковой зоной: в непосредственной близости от объекта находится Национальный музей-заповедник Херсонес Таврический, поэтому такое расположение можно назвать уникальным.</p></td><td><img src='/images/about_us_logo.png' /></td></tr></tbody></table></div>",
              :position => 0
            })

RefinerySetting.find_or_set(:site_name, "ГАРАНТИНВЕСТ")
#User.create({
#  :username => 'admin',
#  :email => "admin@gmail.com",
#  :password => "admin",
#  :password_confirmation => "admin"
#})

