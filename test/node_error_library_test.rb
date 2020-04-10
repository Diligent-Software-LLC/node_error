require_relative 'test_helper'

# NodeErrorLibraryTest.
# @class_description
#   Tests the NodeErrorLibrary class.
class NodeErrorLibraryTest < Minitest::Test

  CLASS = NodeErrorLibrary

  # test_conf_doc_f_ex().
  # @description
  #   The .travis.yml, CODE_OF_CONDUCT.md, Gemfile, LICENSE.txt, README.md, and
  #   .yardopts files exist.
  def test_conf_doc_f_ex()

    assert_path_exists('.travis.yml')
    assert_path_exists('CODE_OF_CONDUCT.md')
    assert_path_exists('Gemfile')
    assert_path_exists('LICENSE.txt')
    assert_path_exists('README.md')
    assert_path_exists('.yardopts')

  end

  # test_version_declared().
  # @description
  #   The version was declared.
  def test_version_declared()
    refute_nil(CLASS::VERSION)
  end

  # setup().
  # @description
  #   Set fixtures.
  def setup()
    @plain = NodeError.new()
  end

  # test_inst_types().
  # @description
  #   A plain instance's type is NodeError. A plain instance's message type is
  #   String.
  def test_inst_types()
    assert_instance_of(NodeError, @plain)
    assert_instance_of(String, @plain.message())
  end

  # teardown().
  # @description
  #   Cleanup.
  def teardown()
  end

end
