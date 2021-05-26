locals {
  kibana_gitlab_client_id      = jsondecode(data.aws_secretsmanager_secret_version.infra.secret_string)["kibana_gitlab_client_id"]
  kibana_gitlab_client_secret  = jsondecode(data.aws_secretsmanager_secret_version.infra.secret_string)["kibana_gitlab_client_secret"]
  kibana_gitlab_group          = jsondecode(data.aws_secretsmanager_secret_version.infra.secret_string)["kibana_gitlab_group"]
  grafana_gitlab_client_id     = jsondecode(data.aws_secretsmanager_secret_version.infra.secret_string)["grafana_gitlab_client_id"]
  grafana_gitlab_client_secret = jsondecode(data.aws_secretsmanager_secret_version.infra.secret_string)["grafana_gitlab_client_secret"]
  grafana_gitlab_group         = jsondecode(data.aws_secretsmanager_secret_version.infra.secret_string)["grafana_gitlab_group"]
  grafana_github_client_id     = jsondecode(data.aws_secretsmanager_secret_version.infra.secret_string)["grafana_github_client_id"]
  grafana_github_client_secret = jsondecode(data.aws_secretsmanager_secret_version.infra.secret_string)["grafana_github_client_secret"]
  grafana_github_teams_ids     = jsondecode(data.aws_secretsmanager_secret_version.infra.secret_string)["grafana_github_teams_ids"]
  grafana_github_allowed_org   = jsondecode(data.aws_secretsmanager_secret_version.infra.secret_string)["grafana_github_allowed_org"]
  gitlab_registration_token    = jsondecode(data.aws_secretsmanager_secret_version.infra.secret_string)["gitlab_registration_token"]
  alertmanager_slack_url       = jsondecode(data.aws_secretsmanager_secret_version.infra.secret_string)["alertmanager_slack_url"]
  alertmanager_slack_channel   = jsondecode(data.aws_secretsmanager_secret_version.infra.secret_string)["alertmanager_slack_channel"]
}

data "aws_secretsmanager_secret" "infra" {
  name = "/${local.name_wo_region}/infra/layer2-k8s"
}

data "aws_secretsmanager_secret_version" "infra" {
  secret_id = data.aws_secretsmanager_secret.infra.id
}
