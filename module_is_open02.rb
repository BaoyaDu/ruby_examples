# A module is open as is a class
# 2015/05/05 17:23:00

require_relative 'module_is_open'

module ModuleIsOpen
  def do_nothing
    puts "do nothing!"
  end
end

include ModuleIsOpen
ModuleIsOpen::do_something
ModuleIsOpen::do_nothing