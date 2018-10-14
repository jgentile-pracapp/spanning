#
# Cookbook:: spanningtest
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe "apache2"

# First get apache2 installed
package "apache2" do
    action :install
end

# Empty array to retain murdered nodes outside of ruby_block
removed_nodes = []

# Find
ruby_block 'murder_my_friends' do
    block do
        # mocking return of a `knife search node chef_env:${this_environment} and recipe:mycookbook`
        sibling_nodes = `echo "node1\nnode2\n"`.split("\n")
        sibling_nodes.each do |sibling|
            # mocking the removal of the cookbook from sibling nodes via knife
            `echo "knife node run_list remove #{sibling} recipe:mycookbook" >> /Users/jgentile/repos/spanning/destruction.txt`
            # push "this" node to the removed_nodes array so it can be read by the resurrect block
            removed_nodes.push(sibling)
        end
    end
    notifies :run, 'ruby_block[resurrect_my_friends]'
end

template "/Users/jgentile/repos/spanning/index.html" do
    source "index-template.html.erb"
    variables template_vars: node[:apache][:custom_vars]
    notifies :restart, "service[apache2]"
end

ruby_block 'resurrect_my_friends' do
  block do
    `echo "resurrecting #{removed_nodes}" >> /Users/jgentile/repos/spanning/resurrection.txt`
  end
  action :nothing
end
