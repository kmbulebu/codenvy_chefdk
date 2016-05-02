FROM codenvy/ubuntu_jre

ADD https://packages.chef.io/stable/ubuntu/12.04/chefdk_0.13.21-1_amd64.deb /tmp/chefdk.deb

RUN sudo dpkg -i /tmp/chefdk.deb

RUN chef gem install foodcritic rubocop rspec

ENV PATH \$PATH:~/.chefdk/gem/ruby/2.1.0/bin

EXPOSE 8080

CMD tailf /dev/null
