FROM fpco/stack-build-small:lts-12.26
WORKDIR /usr/src
COPY argon.cabal stack-7.8.yaml stack.yaml ./
RUN stack build --dependencies-only
COPY . .
RUN stack install
ENTRYPOINT ["argon"]
CMD ["--help"]
