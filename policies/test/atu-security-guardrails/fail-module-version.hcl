mock "tfplan/v2" {
  module {
    source = "../../mocks/plan-empty.sentinel"
  }
}

mock "tfconfig/v2" {
  module {
    source = "../../mocks/config-unapproved-module-version.sentinel"
  }
}

test {
  rules = {
    modules_approved = false
    main = false
  }
}

