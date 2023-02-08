set -x GOFLAGS -buildvcs=false
set -x GO111MODULE "on"
set -x GOARCH "amd64"
set -x GOBIN ""
set -x GONOPROXY "github.mathworks.com"
set -x GOOS ""
set -x GOPATH "/home/gumamahe/go"
set -x GOROOT ""
set -x GOPRIVATE "golang.dhcp,github.mathworks.com"
set -x GOPROXY "http://iat-go-proxy-prod-01:7000/go-proxy"
set -x GOTOOLDIR "/home/gumamahe/go/pkg/tool/darwin_amd64/"
set -x MW_ARCH ""
set GEM_HOME "$HOME/.gem/ruby/2.6.0"

set -x UID (id -u)
set -x GID (id -g)

