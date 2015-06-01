require 'chefspec'
require_relative 'spec_helper'

describe 'aide::default' do
  before { stub_resources }

  let(:chef_run) { ChefSpec::SoloRunner.new.converge(described_recipe) }

  it 'writes aide.conf file' do
    chef_run.node.set['aide']['paths'] = {'/data' => '!'}
    expect(chef_run).to render_file('/etc/aide/aide.conf').with_content { |content|
      expect(content).to include('/data')
    }
  end

  it 'creates standard db dir' do
    expect(chef_run).to render_directory('/var/lib/aide')
  end

  it 'creates standard db file' do
    expect(chef_run).to render_directory('/var/lib/aide/aide.db.gz')
  end

  it 'creates custom db dir' do
    chef_run.node.set['aide']['dbdir'] = '/data/aide'
    expect(chef_run).to render_directory('/data/aide')
  end

  it 'creates standard db file' do
    chef_run.node.set['aide']['dbdir'] = '/data/aide'
    expect(chef_run).to render_directory('/data/aide/aide.db.gz')
  end
end
