require 'ipfs-api'

module Nanoc
  module Deploying
    module Deployers
      class Ipfs < ::Nanoc::Deploying::Deployer
        identifier :ipfs

        def run
          ipfs = IPFS::Connection.new
          key = config[:key]
          ipfs.add Dir.new('output') do |node|
            if node.finished?
              unless node.parent
                puts "publishing #{node.name} to ipns under the key #{key}"
                ipns_hash = ipfs.name.publish(node, key)
                puts "published to ipns hash #{ipns_hash}"
              end
            end
          end
        end
      end
    end
  end
end
