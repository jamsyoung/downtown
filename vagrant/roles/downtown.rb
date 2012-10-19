name "downTown"
description "Recipes needed to build a downTown development environment."

run_list(
  "recipe[nginx]"
  # "recipe[mongodb::10gen_repo]",
  # "recipe[mongodb]"
)
