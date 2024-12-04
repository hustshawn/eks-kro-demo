# https://kro.run/docs/getting-started/Installation
export KRO_VERSION=$(curl -sL \
    https://api.github.com/repos/awslabs/kro/releases/latest | \
    jq -r '.tag_name | ltrimstr("v")'
  )

helm upgrade --install kro oci://public.ecr.aws/kro/kro \
  --namespace kro \
  --create-namespace \
  --version=${KRO_VERSION}
