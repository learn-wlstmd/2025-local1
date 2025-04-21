aws dynamodb create-backup \
    --table-name product \
    --backup-name product-backup-$(date +%Y%m%d%H%M%S) \
    --region ap-northeast-2