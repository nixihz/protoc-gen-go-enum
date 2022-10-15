# protoc-gen-go-enum

Allow to generate const and map from proto and its comment.

### Installation

```shell
go install github.com/nixihz/protoc-gen-go-enum

```

### Usage

```shell
protoc --go-enum_out=paths=source_relative:./ \
    --go-enum_opt=paths=source_relative \
    example/example.proto
```

### Example

from
```protobuf
// Platform Enum
enum Platform{
    // Android OS
    ANDROID = 0;
    // iOS
    IOS = 1;
}

```

to
```go
// Platform Enum
const (
    Platform_ANDROID int64 = 0 // Android OS
    Platform_IOS     int64 = 1 // iOS
)

var (
    Platform_TXT = map[int64]string{
        Platform_ANDROID: "Android OS",
        Platform_IOS:     "iOS",
    }
)


```

