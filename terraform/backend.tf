terraform {
  cloud {
    organization = "capibytes"

    workspaces {
      name = "datalytics-frontend"
    }
  }
}