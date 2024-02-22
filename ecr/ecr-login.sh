function docker_login {
    mkdir -p /tmp/at/docker/aws
    $(docker run -i --rm \
        --network host \
        --env "AWS_ACCESS_KEY_ID=${AWS_DOCKER_ACCESS_KEY_ID}" \
        --env "AWS_SECRET_ACCESS_KEY=${AWS_DOCKER_SECRET_ACCESS_KEY}" \
        -e "AWS_DEFAULT_REGION=${AWS_DOCKER_REGION}" \
        mesosphere/aws-cli \
        ecr get-login --no-include-email --region ${AWS_DOCKER_REGION})
}