
data "external" "myipaddr_local" {
  program = ["bash", "-c", "curl -s 'https://api.ipify.org?format=json'"]
}
