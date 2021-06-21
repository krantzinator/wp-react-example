project = "wp-react-example"

app "example-reactjs" {
  build {
    use "docker" {}
    registry {
      use "aws-ecr" {
        region     = "us-west-1"
        repository = "waypoint-example"
        tag        = "latest"
      }
    }
  }

  deploy {
    use "aws-ecs" {
      region = "us-east-1"
      memory = "512"
    }
  }
}
