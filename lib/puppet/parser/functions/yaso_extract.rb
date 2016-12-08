  module Puppet::Parser::Functions
      newfunction(:yaso_extract) do |args|
        args[0].each do |arg|
          name = arg.gsub('::', '_')
          setvar(name, args[1])
        end
      end
    end
