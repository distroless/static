FROM distroless.dev/c-build:latest as build

RUN cc -static hello.c -o hello

FROM distroless.dev/static:latest

COPY --from=build hello ./hello
CMD ["/hello"]
