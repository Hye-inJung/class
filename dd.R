c(1,2,3)
install.packages("usethis")
## Name, email
usethis::use_git_config(user.name = "Hye-inJung", user.email = "jasmine9614@gmail.com")

## setting: permanent storage
credentials::credential_helper_set("manager")                 # Windows
credentials::credential_helper_set("osxkeychain")             # Mac
credentials::credential_helper_set("store")                   # Linux

## create a personal access token for authentication:
usethis::create_github_token() 
## in case usethis version < 2.0.0: usethis::browse_github_token() (or even better: update usethis!)

## copy and paste your token and press enter
credentials::set_github_pat("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")

# ----------------------------------------------------------------------------

#### 4. Restart R! ###########################################################

# ----------------------------------------------------------------------------

#### 5. Verify settings ######################################################

usethis::git_sitrep()
