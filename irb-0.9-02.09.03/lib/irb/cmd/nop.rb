#
#   nop.rb - 
#   	$Release Version: 0.9$
#   	$Revision: 1.1 $
#   	$Date: 2002/07/03 10:50:53 $
#   	by Keiju ISHITSUKA(Nihon Rational Software Co.,Ltd)
#
# --
#
#   
#
module IRB
  module ExtendCommand
    class Nop
      
      @RCS_ID='-$Id: nop.rb,v 1.1 2002/07/03 10:50:53 keiju Exp keiju $-'

      def self.execute(conf, *opts)
	command = new(conf)
	command.execute(*opts)
      end

      def initialize(conf)
	@irb_context = conf
      end

      attr_reader :irb_context

      def irb
	@irb_context.irb
      end

      def execute(*opts)
	#nop
      end
    end
  end
end

