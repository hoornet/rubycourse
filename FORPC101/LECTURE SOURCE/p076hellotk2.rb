# p076hellotk2.rb
require 'tk' 
TkButton.new do 
  text "EXIT" 
  command { exit } 
  pack('side'=>'left', 'padx'=>10, 'pady'=>10) 
end 
Tk.mainloop