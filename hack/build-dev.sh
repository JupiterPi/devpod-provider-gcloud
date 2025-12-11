RELEASE_VERSION=v0.0.0 ./hack/build.sh

# replace occurrences of https://github.com/loft-sh/devpod-provider-gcloud/releases/download/v0.0.0/devpod-provider-gcloud-linux-amd64 with local path
sed -i -e "s/https:\/\/github.com\/loft-sh\/devpod-provider-gcloud\/releases\/download\/v0.0.0\/devpod-provider-gcloud-linux-amd64/\/workspaces\/devpod-provider-gcloud\/release\/devpod-provider-gcloud-linux-amd64/g" ./release/provider.yaml
# todo: make this agnostic of a specific path by replacing "/workspaces/devpod-provider-gcloud/" with a variable"