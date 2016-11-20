#
#   math-mode.rb - 
#   	$Release Version: 0.9$
#   	$Revision: 1.1 $
#   	$Date: 2002/07/03 10:50:46 $
#   	by Keiju ISHITSUKA(Nihon Rational Software Co.,Ltd)
#
# --
#
#   
#
require "mathn"

module IRB
  class Context
    attr_reader :math_mode
    alias math? math_mode

    def math_mode=(opt)
      if @math_mode == true && opt == false
	IRB.fail CantRetuenNormalMode
	return
      end

      @math_mode = opt
      if math_mode
	main.extend Math
	print "start math mode\n" if verbose?
      end
    end

    def inspect?
      @inspect_mode.nil? && !@math_mode or @inspect_mode
    end
  end
end

