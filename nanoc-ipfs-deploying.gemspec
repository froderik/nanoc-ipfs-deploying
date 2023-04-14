Gem::Specification.new do |s|
  s.name        = "nanoc-ipfs-deploying"
  s.version     = "0.1.0"
  s.summary     = "Nanoc -> IPFS"
  s.description = "A Nanoc deployer for deploying to IPFS using an IPNS name."
  s.authors     = ["Fredrik Rubensson"]
  s.email       = "fredrik@mazin.cc"
  s.files       = ["lib/nanoc_ipfs_deployer.rb"]
  s.homepage    = "https://github.com/froderik/nanoc-ipfs-deploying"
  s.license     = "MIT"
  s.add_runtime_dependency 'ipfs-api'
end
