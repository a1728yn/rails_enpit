require 'test_helper'

class BookTest < ActiveSupport::TestCase
  def setup
    @book = Book.new(title:'ABC', author:'Mr.John', isbn:'123-4-5678-2222-3',
			status:'available', summary:'this is summary',
			published:'2015-04-20', modified:'2017-07-28')
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

  test 'title should be less than 100' do
    @book.title = 'a' * 101
    assert_not @book.valid?
  end

  test 'author should be less than 100' do
    @book.author = 'a' * 101
    assert_not @book.valid?
  end

  test 'isbn should have - ' do
    @book.isbn = '12345678901234567'
    assert_not @book.valid?
  end

  test 'summary should be less than 200' do
    @book.summary = 'a' * 201
    assert_not @book.valid?
  end


end
