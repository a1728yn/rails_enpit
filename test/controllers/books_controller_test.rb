# -*- coding: utf-8 -*-
require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post :create, book: { author: @book.author, title: @book.title, isbn: @book.isbn, status: @book.status, summary: @book.summary, published: @book.published, modified: @book.modified}
    end

    assert_redirected_to book_path(assigns(:book))
  end

  test "should show book" do
    get :show, id: @book
    assert_response :success
    assert_select "h1", "本の詳細表示"
    assert_select "table tr", 7
  end

  test "should get edit" do
    get :edit, id: @book
    assert_response :success
    assert_select "h1", "本の貸出"
    assert_select "table tr", 7
  end

  test "should update book" do
    patch :update, id: @book, book: { author: @book.author, title: @book.title }
    assert_redirected_to book_path(assigns(:book))
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete :destroy, id: @book
    end

    assert_redirected_to books_path
  end
end
