# encoding: UTF-8
# -*- mode: ruby -*-
# vi: set ft=ruby :

source 'https://supermarket.chef.io'

metadata

group :integration do
  cookbook 'test', path: 'test/fixtures/cookbooks/test'
  cookbook 'apt'
  cookbook 'yum'
end

group :local do
  cookbook 'aide', path: File.dirname(__FILE__)
end
