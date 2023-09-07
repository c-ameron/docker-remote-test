FROM ubuntu
COPY --from=base /bar /bar
COPY --from=local foo /foo
