.PHONY: all clean test restic

all: restic

restic:
	go run -mod=vendor build.go --enable-cgo || go run build.go --enable-cgo

clean:
	rm -f restic

test:
	go test ./cmd/... ./internal/...
