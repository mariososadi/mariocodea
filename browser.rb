# Este programa sólo funciona con 'www.codea.mx' jejeje LOL. Las demás páginas o están cifradas o no están acomodadas como 
# Codeacamp (barra superior con links hacia las landing pages ej. www.codeacamp.mx/posts)

require 'net/http'
require 'nokogiri'

class Page

  attr_reader :url
  attr_accessor :argv

  def initialize(url:)
    @url = url
  end

  def fetch!
    
    res = Net::HTTP.get_response(URI(@url))
     @a = res.body    
  end

  def title
    @doc = Nokogiri::HTML(fetch!)
    profile_name = @doc.search("title")
    profile_name.inner_text
  end

  def links
    profile_name = @doc.search(".nav.navbar-nav > li")
    @links = profile_name.css('a').collect{|x| x["href"]}
  end
end

class Browser 

  attr_accessor :argv, :answer

  def run!
    puts ""
    print "Dirección web que quieres buscar: www."
    $argv = "http://www." + gets.chomp.downcase
    page = Page.new(url: $argv)
    puts "url> #{page.url}"
    puts "Título: #{page.title}"
    puts "Links: "
    puts "  Home: #{page.links[2]}"
    puts "  Preguntas Frecuentes: #{page.links[3]}"
    puts "  Blog: #{page.links[4]}"
    puts "  Precios: #{page.links[5]}"
    puts "  Escríbenos: #{page.links[6]}"
    puts "Contenido: "
    puts " "
    puts "¿Qué deseas hacer ahora? (presiona enter después de elegir tu respuesta)"
    puts "[L] Entrar en algún link"
    puts "[Y] Buscar una página diferente"
    puts "[N] Salir del Browser"
    $answer = gets.chomp.upcase
   
  end

  def link!

    puts ""
    print "Dirección del link que quieres buscar: /"
    @argv_2 = $argv+"/" + gets.chomp
    page = Page.new(url: @argv_2)
    puts "url> #{page.url}"
    puts "Título: #{page.title}"
    puts "Links: "
    puts "  Home: #{page.links[2]}"
    puts "  Preguntas Frecuentes: #{page.links[3]}"
    puts "  Blog: #{page.links[4]}"
    puts "  Precios: #{page.links[5]}"
    puts "  Escríbenos: #{page.links[6]}"
    puts "Contenido: "
    puts " "
    puts "¿Qué deseas hacer ahora? (presiona enter después de elegir tu respuesta)"
    puts "[L] Entrar en algún link"
    puts "[Y] Buscar una página diferente"
    puts "[N] Salir del Browser"
    $answer = gets.chomp.upcase

  end

end


browser = Browser.new
browser.run!

while $answer != "N"
case $answer
 when "Y" then  browser.run!
 when "N" then exit
 when "L" then  browser.link!
end
end

