# resource "aws_ssm_paramater" "db_username" {
#   name = "/db/username"
#   value = "root"
#   type = "String"
#   description = "データベースのユーザー名"
# }

# resource "aws_ssm_paramater" "db_raw_password" {
#   name = "/db/raw_password"
#   value = "VeryStrongPassword!"
#   type = "SecureString"
#   description = "データベースのパスワード"

#   # applyあとに以下コマンドでパスワードを更新する
#   # aws ssm put-paramater --name '/db/password' --type SecureString --value 'ModifiedStrongPassword!' --overwrite
#   lifecycle {
#     ignore_changes = [value]
#   }
# }