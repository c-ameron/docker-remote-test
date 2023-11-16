FROM ubuntu as base
COPY --from=local bar /bar

FROM alpine as runtime
COPY --from=base /bar /bar
COPY --from=local foo /foo
