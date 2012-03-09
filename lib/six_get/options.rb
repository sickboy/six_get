require 'cri'

module SixGet
  # Handles commandline parameters for the Main tool
  class Options
    class <<self
      # Parse given args
      # @param [Array] args Parse given args
      def parse args = ARGV
        _parse.run(args)
      end

      private
      # Parser definition
      def _parse
        #super_cmd = Cri::Command.new_basic_root # Bug with h self.help -> cmd.help etc
        super_cmd = Cri::Command.define do
          name        'six_get'
          usage       'six_get [command] [options]'
          summary     'Installing, Updating and Managing of Mods, Tools, etc'
          description 'Provides download and installation'


          option :h, :help, 'show help for this command' do |value, cmd|
            puts cmd.help
            exit 0
          end

          subcommand Cri::Command.new_basic_help

          option nil, :version, 'Show version' do |value, cmd|
           puts SixGet.product_version
           exit 0
          end

          flag :v, :verbose, 'Verbose'
        end
      end
    end
  end
end
