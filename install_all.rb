require 'json'

version = ARGV[0]
if version.nil?
  puts("One argument expected (a Coq version).")
else
  puts("Computing the maximal installation for Coq #{version}.")
  puts("Be sure to start from an OPAM where nothing is installed.")
  system("opam install --criteria=\"+new,-notuptodate\" --show-action --json=installs.json coq.#{version} >/dev/null")

  # We filter the list of packages to install to only keep Coq packages.
  packages = JSON.parse(File.read("installs.json"))
  packages = packages[0].map {|package| package["install"]}
  packages = packages.find_all {|package| package["name"].include?("coq")}
  packages = packages.map {|package| "#{package["name"]}.#{package["version"]}"}.join(" ")
  puts("opam install #{packages}")
end
