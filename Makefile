

.PHONY: build
# generate build
build:
	go build -o ./bin/protoc-gen-go-enum cmd/protoc-gen-go-enum/main.go

.PHONY: enum
# generate enum
enum:
	protoc --plugin=./protoc-gen-go-enum \
	       --go-enum_out=paths=source_relative:./ \
	       --go-enum_opt=paths=source_relative \
	       example/example.proto