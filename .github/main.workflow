workflow "New workflow" {
  on = "push"
  resolves = [
    "Hello World",
    "Hello World b",
    "HTTP client",
    "聚合action"
  ]
}

action "Hello World" {
  uses = "./action-a"
  env = {
    MY_NAME = "Mona"
  }
  args = "\"Hello world, I'm $MY_NAME!\""
}

action "Hello World b" {
  uses = "./action-b"
}

action "HTTP client" {
  uses = "swinton/httpie.action@8ab0a0e926d091e0444fcacd5eb679d2e2d4ab3d"
  args = ["POST", "httpbin.org/anything", "hello=world" ]
}

action "聚合action" {
  uses = "./action-b"
  needs = ["HTTP client", "Hello World", "Hello World b"]
}