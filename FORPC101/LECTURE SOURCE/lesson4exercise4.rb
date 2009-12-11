puts Dir.getwd
Dir.mkdir("tmp")
Dir.chdir("tmp")
puts Dir.getwd
Dir.chdir("..")
puts Dir.getwd
Dir.rmdir("tmp")
