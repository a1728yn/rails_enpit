require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @book = Book.new(title:'ABC', author:'Mr.John', isbn:'ISBN978-4-949999-13-7',
			status:'available', summary:'this is summary',
			published:'2015/04/20', modified:'2017/07/28')
  end

  test 'should be valid' do
    assert @book.valid?
  end

  test 'title should be present' do
    @book.title = ''
    assert_not @book.valid?
  end

  test 'author should be present' do
    @book.author = ''
    assert_not @book.valid?
  end

  test 'isbn should be present' do
    @book.isbn = ''
    assert_not @book.valid?
  end

  test 'status should be present' do
    @book.status = ''
    assert_not @book.valid?
  end

  test 'summary should be present' do
    @book.summary = ''
    assert_not @book.valid?
  end

  test 'published should be present' do
    @book.published = ''
    assert_not @book.valid?
  end

  test 'modified should be present' do
    @book.modified = ''
    assert_not @book.valid?
  end

  test 'summary should be less than 200' do
    @book.summary = 'a' * 201
    assert_not @book.valid?
  end
end
