set -x GO111MODULE "on"
set -x GOARCH "amd64"
set -x GOBIN "/usr/local/Cellar/go"
set -x GONOPROXY "github.mathworks.com"
set -x GOOS "darwin"
set -x GOPATH "$HOME/go"
set -x GOPRIVATE "golang.dhcp,github.mathworks.com"
set -x GOPROXY "http://iat-go-proxy-prod-01:7000/go-proxy"
set -x GOTOOLDIR "/usr/local/go/pkg/tool/darwin_amd64/"
set -x MW_ARCH "maci64"
set GEM_HOME "$HOME/.gem/ruby/2.6.0"

set -x UID (id -u)
set -x GID (id -g)

