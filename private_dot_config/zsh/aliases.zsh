alias vi=nvim -n
alias rm="rm -rf"
alias cp="cp -rf"
alias e="atool -x"
alias ag=rg # because fuck you
alias mvncp="mvn clean package"
alias mvnci="mvn clean install"
alias kb="kubectl"
alias pcup="podman-compose up -d"
alias pcdown="podman-compose down"
alias pod="podman pod"
# alias aws="aws --profile PowerUserAccess-637423288156"

sd () {
	ARGS=""
	if [ -f session.json ]; then ARGS="--session=./session.json"; fi
	http $ARGS $@
}

patch () {
	sd PATCH $@
}

get () {
	sd GET $@
}

put () {
	sd PUT $@
}
