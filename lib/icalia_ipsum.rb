#encoding: utf-8
require "icalia_ipsum/version"

module IcaliaIpsum
  QUOTES = ["toto", "eeeeeeeel aguaaa", "joch", "hey scottie", "jesus man!", 
            "apch", "mijo pue", "a la github", "a la heroku", "adosapaco",
            "ay vooooooy", "ay javi", "e e mai", "bañao", "iiiiiiiii", "ack",
            "ay lentes", "como te odio", "el kuri ahi", "el borrego ahi",
            "dale suave", "super faaaaaaast", "aaaa laaaaa", "simon o que",
            "no o que", "el mamario", "chups o que", "chuuupalo", "jalas o que",
            "que weeey", "no te aguanto kurii", "cheves o que", "wuuueeeeeoooooo",
            "wuueeep", "nandebayo", "nandecorita nadebayo"]

  def self.quotes(num = 3)
    quotes_array = []
    num.times { quotes_array.push QUOTES.sample }
    quotes_array.join(' ')
  end

  def self.paragraphs(paragraph_count = 3)
    paragraphs = ''
    paragraph_count.times { paragraphs << " #{self.paragraph}</br>" } 
    paragraphs.html_safe
  end

  private

  def self.paragraph
    QUOTES.shuffle[0..25].join(' ').capitalize
  end

end
