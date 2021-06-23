project = "wp-react-example"

runner {
  enabled = true

  data_source "git" {
    url = "https://github.com/krantzinator/wp-react-example"
    ref = "HEAD"
  }

  poll {
    enabled  = true
    interval = "10s"
  }
}

app "example-reactjs" {
  build {
    use "docker" {}
  }

  deploy {
    use "docker" {}
  }
}

variable "hello" {
  default = "other"
}
