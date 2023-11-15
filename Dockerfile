FROM ocaml/opam:ubuntu

WORKDIR /app

# Copy project files into the docker image
COPY . ./

# Change ownership of the working directory
RUN sudo chown -R opam: .

# Install system dependencies
RUN sudo apt-get update && sudo apt-get install -y pkg-config libev-dev libgmp-dev libpcre3-dev libssl-dev

# Install opam dependencies
RUN opam install . --deps-only --locked -y

# Build project using dune 
RUN opam exec -- dune build

# Expose the port
EXPOSE 8080

# Command to run when the docker container starts
CMD ["opam", "exec", "--", "dune", "exec", "./_build/default/bin/main.exe"]
