function gwlogs --wraps='awslogs get eks/shared-eks-cluster/containers --profile=gateway --aws-region=eu-central-1' --description 'alias gwlogs=awslogs get eks/shared-eks-cluster/containers --profile=gateway --aws-region=eu-central-1'
  awslogs get eks/shared-eks-cluster/containers --profile=gateway --aws-region=eu-central-1 $argv; 
end
