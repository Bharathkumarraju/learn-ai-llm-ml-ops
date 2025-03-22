terraform {
  backend "s3" {
    bucket       = "trfm-state-storage-bharaths-sg20250322083746225200000001"
    key          = "writeonly"
    use_lockfile = true
    region       = "ap-southeast-1"
  }
}