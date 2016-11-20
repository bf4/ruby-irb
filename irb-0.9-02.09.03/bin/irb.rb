#!/usr/bin/env ruby
#
#   irb.rb - intaractive ruby
#   	$Release Version: 0.9 $
#   	$Revision: 1.12 $
#   	$Date: 2002/06/11 07:51:00 $
#   	by Keiju ISHITSUKA(keiju@ishitsuka.com)
#

require "irb"

if __FILE__ == $0
  IRB.start(__FILE__)
else
  # check -e option
#  tmp = ENV["TMP"] || ENV["TMPDIR"] || "/tmp"
#  if %r|#{tmp}/rb| =~ $0
  if /^-e$/ =~ $0
    IRB.start(__FILE__)
  else
    IRB.initialize(__FILE__)
  end
end
