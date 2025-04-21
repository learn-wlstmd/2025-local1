aws ecs update-service --cluster ws-cluster --service gateway-svc --enable-execute-command

TASKDEF_ARN=$(aws ecs list-tasks --cluster ws-cluster --desired-status RUNNING --family gateway-td --region ap-northeast-2 --query "taskArns[0]" --output text)

aws ecs execute-command  \
    --region ap-northeast-2 \
    --cluster ws-cluster \
    --task $TASKDEF_ARN \
    --container gateway \
    --command "/bin/sh" \
    --interactive

aws ecs update-service --cluster ws-cluster --service gateway-svc --force-new-deployment

