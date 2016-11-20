#
#   irb/ws-for-case-2.rb - 
#   	$Release Version: 0.9$
#   	$Revision: 1.9 $
#   	$Date: 2002/06/11 07:51:29 $
#   	by Keiju ISHITSUKA(keiju@ishitsuka.com)
#
# --
#
#   
#

while true
  IRB::BINDING_QUEUE.push b = binding
end
