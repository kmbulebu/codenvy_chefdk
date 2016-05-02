FROM codenvy/ubuntu_jre

ADD https://packages.chef.io/stable/ubuntu/12.04/chefdk_0.13.21-1_amd64.deb /tmp/chefdk.deb

RUN sudo dpkg -i /tmp/chefdk.deb

RUN sudo rm -f /tmp/chefdk.deb

RUN chef gem install foodcritic rubocop rspec kitchen-ec2 kitchen-google kitchen-rackspace kitchen-fog kitchen-digitalocean kitchen-docker   

RUN echo "export PATH=$HOME/.chefdk/gem/ruby/2.1.0/bin:/opt/chefdk/bin:/opt/chefdk/embedded/bin:$PATH" >> /home/user/.bashrc

CMD tailf /dev/null
