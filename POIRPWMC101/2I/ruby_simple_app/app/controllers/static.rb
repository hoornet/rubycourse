class Static < Application

# ...and remember, everything returned from an action
# goes to the client...

=begin
  def index
    'Welcome to the Simple Application Site!'
  end
=end

  def hello
    #'Hello Static Merb!'
    #render :action => 'hello'
    render
  end
  
  def time
    "The time now is: #{Time.now}"
  end


end
