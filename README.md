# Install all OPAM
Install a maximum of OPAM Coq packages.

Start from an OPAM folder where nothing is installed, add your repositories and run:

    ruby install_all.rb 8.4.6

This will print you the command to simultaneously install the maximum number of OPAM Coq packages for Coq version `8.4.6`. On our machine, this prints:

    opam install coq-io-hello-world.1.1.0 coq-opam-website.1.3.2 coq-io-system.2.4.0 coq-io-system-ocaml.2.3.0 coq-concurrency-system.1.0.0 coq-moment.1.0.0 coq-io-exception.1.1.0 coq-interval.2.2.0 coq-plouffe.1.1.0 coq-coqeal-theory.0.9.1 coqide.8.4.6 coq-list-string.2.1.1 coq-io-evaluate.1.0.0 coq-iterable.1.0.0 coq-io-list.1.1.0 coq-corn.1.0.0 coq-coquelicot.2.1.0 coq-math-comp.1.5.0 coq-compcert.2.5.0 coq-color.1.1.0 coq-constructors.1.0.0 coq-cunit.1.0.0 coq-error-handlers.1.2.0 coq-ext-lib.0.9.0 coq-flocq.2.5.0 coq-force-84.1.0.0 coq-function-ninjas.1.0.0 coq-geocoq.1.1.0 coq-io.3.2.0 coq-list-plus.1.1.0 coq-math-classes.1.0.2 coq-ssreflect.1.5.0 coq.8.4.6 coq:shell.1

We use the `--criteria="+new,-notuptodate"` option, trick due to [Fabrice Lefessant](http://fabrice.lefessant.net/).
