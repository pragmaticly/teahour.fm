# -*- coding: utf-8 -*-
xml.instruct!
xml.rss "xmlns:itunes" => "http://www.itunes.com/dtds/podcast-1.0.dtd", "version" => "2.0" do
  xml.channel do
    xml.title "Teahour.fm"
    xml.link "http://teahour.fm"
    xml.language "zh-CN"
    xml.copyright "&#x2117; &amp; &#xA9; 2013 Teahour.fm"
    xml.itunes :subtitle, "The chinese tech podcast focusing on programming, entrepreneurship and other geeky topics."
    xml.itunes :author, "Teahour.fm"
    xml.itunes :summary, "Teahour.fm 由 Terry Tai，Dingding Ye, Daniel Lv 和 Kevin Wang 主持，会专注程序员感兴趣的话题，包括 Web 设计和开发，移动应用设计和开发，创业以及一切 Geek 的话题。"

    xml.id "http://teahour.fm"
    xml.link "href" => "http://teahour.fm/"
    xml.link "href" => "http://teahour.fm/feed.xml", "rel" => "self"
    xml.updated blog.articles.first.date.to_time.iso8601
    xml.description "Teahour.fm 由 Terry Tai，Dingding Ye, Daniel Lv 和 Kevin Wang 主持，会专注程序员感兴趣的话题，包括 Web 设计和开发，移动应用设计和开发，创业以及一切 Geek 的话题。"
    xml.author { xml.name "Teahour.fm" }
    xml.itunes :owner do
      xml.itunes :name, "Teahour.fm"
      xml.itunes :email, "yedingding@gmail.com"
    end
    xml.itunes :image, "href" => "http://teahour.fm/images/logo.jpg"
    xml.itunes :category, "text" => "Technology"
    xml.itunes :category, "text" => "Software How-To"
    xml.itunes :category, "text" => "Gadgets"

    blog.articles.each do |article|
      xml.item do
        xml.title article.title
        xml.itunes :author, article.data["host"]
        xml.itunes :summary, article.summary, "type" => "html"
        xml.itunes :image, "href" => "http://teahour.fm/images/logo.jpg"
        xml.enclosure "url" => article.data["mp3_link"], "type" => "audio/x-m4a"
        xml.guid article.data["mp3_link"]
        xml.pubDate article.date.to_time.iso8601
        xml.itunes :duration, article.data["duration"]
        xml.itunes :keywords, article.tags.join(", ")
      end
    end
  end
end
