FROM gitlab/gitlab-ce:latest

WORKDIR /var/opt/gitlab

EXPOSE 80

CMD ["gitlab-rails", "server"]