#!/usr/bin/ruby
IRB.conf[:AUTO_INDENT] = true
IRB.conf[:USE_READLINE] = true
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"
IRB.conf[:PROMPT_MODE] = :SIMPLE

require 'irb/completion'
require 'irb/ext/save-history'
require 'pp'

# add ~/.ruby to the library search path
$LOAD_PATH << File.expand_path('~/.ruby')

# load rubygems and wirble
require 'rubygems' rescue nil
require 'wirble'

# load wirble
Wirble.init
Wirble.colorize

class Object
  # print documentation
  #
  # ri 'Array#pop'
  # Array.ri
  # Array.ri :pop
  # arr.ri :pop
  def ri(method = nil)
    unless method && method =~ /^[A-Z]/ # if class isn't specified
      klass = self.kind_of?(Class) ? name : self.class.name
      method = [klass, method].compact.join('#')
    end
    puts `ri '#{method}'`
  end
  
  def non_class_methods
    self.methods - Class.methods
  end
end
