FROM rust:1.78

RUN rustup target add wasm32-unknown-unknown

RUN cargo install trunk

RUN cargo install -f wasm-bindgen-cli

EXPOSE 8080

VOLUME [ "/yewduxrs" ]

WORKDIR /yewduxrs

#  Can use CMD [ "sleep", "infinity" ]
CMD [ "trunk", "serve" ]
