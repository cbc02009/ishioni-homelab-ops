resource "authentik_stage_prompt_field" "username" {
  field_key = "username"
  required  = true
  type      = "text"
  label     = "Username"
  # placeholder = <<-EOT
  # try:
  #   return user.username
  # except:
  #   return ''
  # EOT
  placeholder            = "try:\n    return user.username\nexcept:\n    return ''"
  placeholder_expression = true
  order                  = 200
}

resource "authentik_stage_prompt_field" "name" {
  field_key              = "name"
  type                   = "text"
  required               = true
  label                  = "Name"
  placeholder            = "try:\n    return user.name\nexcept:\n    return ''"
  placeholder_expression = true
  order                  = 201
}

resource "authentik_stage_prompt_field" "email" {
  field_key              = "email"
  type                   = "email"
  required               = true
  label                  = "Email"
  placeholder            = "try:\n    return user.email\nexcept:\n    return ''"
  placeholder_expression = true
  order                  = 202
}

resource "authentik_stage_prompt_field" "locale" {
  field_key              = "attributes.settings.locale"
  type                   = "ak-locale"
  required               = true
  label                  = "Locale"
  placeholder            = "try:\n    return user.attributes.get('settings', {}).get('locale', '')\nexcept:\n    return ''"
  placeholder_expression = true
  order                  = 203
}

resource "authentik_stage_prompt_field" "password" {
  field_key   = "password"
  type        = "password"
  label       = "Password"
  placeholder = "Password"
  required    = true
  order       = 300
}

resource "authentik_stage_prompt_field" "password-repeat" {
  field_key   = "password-repeat"
  type        = "password"
  label       = "Password (repeat)"
  placeholder = "Password (repeat)"
  required    = true
  order       = 301
}