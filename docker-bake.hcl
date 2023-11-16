variable "TAG" {
  default = "latest"
}

group "default" {
  targets = ["webapp"]
}

target "webapp" {
  dockerfile = "Dockerfile"
  tags = ["docker.io/username/webapp:${TAG}"]
    contexts = {
        local = BAKE_CMD_CONTEXT
    }
}
