# p028swapcontents.rb - Program to swap the contents of 2 text files
# Asuumptions: The two files exist in the same folder as the program

# Function to read contents of one file and write them to another file
# Accepts 2 file names - file1 and file2
# Reads from file1 and writes to file2
def filereadwrite(file1, file2)
  f2 = File.open(file2, "w")
  f1 = File.open(file1, "r")
  while line = f1.gets
    f2.puts line
  end
  f1.close
  f2.close
end

filereadwrite("file1", "file1.tmp")
filereadwrite("file2", "file1")
filereadwrite("file1.tmp", "file2")

File.delete('file1.tmp')