css_dir = "assets"
sass_dir = "sass"
javascripts_dir = "js"
sourcemap = false
output_style = :compressed

# Saves css files as liquid
on_stylesheet_saved do |filename|
  if File.exists?(filename)
    # Break up the path
    path = File.dirname(filename) + "/"
    file = File.basename(filename, ".*")
    extension = ".scss"

    # Move the file to new location
    FileUtils.mv filename, path + file + extension
  end
end
