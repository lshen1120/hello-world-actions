workflow "New workflow" {
  on = "push"
  resolves = [
    "Hello World",
    "HTTP client",
  ]
}

action "Hello World" {
  uses = "./action-a"
  env = {
    MY_NAME = "Mona"
  }
  args = "\"Hello world, I'm $MY_NAME!\""
}

action "HTTP client" {
  uses = "swinton/httpie.action@8ab0a0e926d091e0444fcacd5eb679d2e2d4ab3d"
  args = "\"POST\", \"httpbin.org/anything\", \"hello=world\""
}
