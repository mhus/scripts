#!/bin/bash

if [ -z $1 -o -z $2 ] 
then
  echo "Usage $0 <vpc id> <region>"
  echo "Example $0 vpc-089c9952f05e8f9cf eu-central-1"
  exit 1
fi

vpc="$1" 
region="$2"
aws ec2 describe-vpc-peering-connections --region $region --filters 'Name=requester-vpc-info.vpc-id,Values='$vpc | grep VpcPeeringConnectionId
aws ec2 describe-nat-gateways --region $region --filter 'Name=vpc-id,Values='$vpc | grep NatGatewayId
aws ec2 describe-instances --region $region --filters 'Name=vpc-id,Values='$vpc | grep InstanceId
aws ec2 describe-vpn-gateways --region $region --filters 'Name=attachment.vpc-id,Values='$vpc | grep VpnGatewayId
aws ec2 describe-network-interfaces --region $region --filters 'Name=vpc-id,Values='$vpc | grep NetworkInterfaceId
aws ec2 describe-carrier-gateways --region $region --filters Name=vpc-id,Values=$vpc | grep CarrierGatewayId
aws ec2 describe-local-gateway-route-table-vpc-associations --region $region --filters Name=vpc-id,Values=$vpc | grep LocalGatewayRouteTableVpcAssociationId

