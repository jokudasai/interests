txt = open("source.txt").read.split("\n")
str = ""
txt.each_with_index do |t, i|
  str += "<div class=\"tile-wrap\">"
  str += "<div class=\"tile\">"
  str += "<div class=\"front\" style=\"background-image:url('https://placeholdit.imgix.net/~text?txtsize=33&txt=#{i}&w=400&h=400')\"></div>"
  str += "<div class=\"back\">#{i} #{t}</div>"
  str += "</div>"
  str += "</div>"
end

puts %{
<!DOCTYPE html>
<html>
  <head>
      <title>NOUNS</title>
      <link rel="stylesheet" href="main.css">
  </head>

  <body>

      <div class="header">
          <div class="row"></div>
      </div>

      <div class="grid">#{str}</div>

      <div class="footer">
          <div class="row"></div>
      </div>
  </body>
</html>
}
