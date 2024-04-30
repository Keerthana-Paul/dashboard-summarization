project_name: "dashboard-summarization-extension"

# application: looker-gen-ai {
#   label: "Looker GenAI Extension"
#   # for development: url: "https://localhost:8080/bundle.js"
#   # production
#   file: "bundle.js"
#   entitlements: {
#     use_embeds: yes
#     use_form_submit: yes
#     use_iframes: yes
#     external_api_urls: ["https://localhost:8080","http://localhost:8080"]
#     core_api_methods: ["run_inline_query", "me", "all_looks", "run_look", "all_lookml_models", "run_sql_query", "create_sql_query",
#       "lookml_model_explore", "create_query", "use_iframes", "use_embeds",  "use_form_submit",
#       "all_dashboards", "dashboard_dashboard_elements", "run_query", "dashboard", "lookml_model"] #Add more entitlements here as you develop new functionality
#   }
# }

# constant: CONNECTION_NAME {
#   value: ""
#   export: override_optional
# }


application: dashboard-summarization {
  label: "Dashboard Insights Powered by Vertex AI"
  # file: "bundle.js"
  url: "http://localhost:8080/bundle.js"
  mount_points: {
    dashboard_vis: yes
    dashboard_tile: yes
    standalone: yes
  }
  entitlements: {
    local_storage: yes
    use_form_submit: yes
    core_api_methods: ["run_inline_query","all_lookml_models","dashboard","dashboard_dashboard_elements"]
    external_api_urls: [
      "https://websocket-service-qoyshktzha-uc.a.run.app","http://localhost:5000","http://localhost:3000","https://*.googleapis.com","https://slack.com/api/*","https://slack.com/*"
    ]
    oauth2_urls: [
      "https://accounts.google.com/o/oauth2/v2/auth",
      "https://www.googleapis.com/auth/chat.spaces",
      "https://www.googleapis.com/auth/drive.metadata.readonly",
      "https://www.googleapis.com/auth/spreadsheets.readonly",
      "https://www.googleapis.com/auth/userinfo.profile",
      "https://www.googleapis.com/auth/chat.spaces.readonly",
      "https://www.googleapis.com/auth/chat.bot",
      "https://www.googleapis.com/auth/chat.messages",
      "https://www.googleapis.com/auth/chat.messages.create",
      "https://slack.com/oauth/v2/authorize"
    ]
  }
}
