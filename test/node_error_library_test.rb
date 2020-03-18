require_relative 'test_helper'

# NodeErrorLibraryTest.
# @abstract
# Tests the NodeErrorLibrary class.
class NodeErrorLibraryTest < Minitest::Test

  # test_version_declared().
  # @abstract
  # The version was declared.
  def test_version_declared()
    refute_nil(::NodeErrorLibrary::VERSION)
  end

  # test_conf_doc_f_ex().
  # @abstract
  # The .travis.yml, CODE_OF_CONDUCT.md, Gemfile, LICENSE.txt, and 
  # README.md files exist.
  def test_conf_doc_f_ex()
    assert_path_exists('.travis.yml')
    assert_path_exists('CODE_OF_CONDUCT.md')
    assert_path_exists('Gemfile')
    assert_path_exists('LICENSE.txt')
    assert_path_exists('README.md')
  end

  # setup().
  # @abstract
  # Set fixtures.
  def setup()
    @plain = NodeError.new()
  end

  # test_inst_types().
  # @abstract
  # A plain instance's type is NodeError. A plain instance's message type is
  # String.
  def test_inst_types()
    assert_instance_of(NodeError, @plain)
    assert_instance_of(String, @plain.message())
  end

  # teardown().
  # @abstract
  # Cleanup.
  def teardown()
  end

end

