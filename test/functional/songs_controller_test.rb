require 'test_helper'

class SongsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Song.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Song.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Song.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to song_url(assigns(:song))
  end

  def test_edit
    get :edit, :id => Song.first
    assert_template 'edit'
  end

  def test_update_invalid
    Song.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Song.first
    assert_template 'edit'
  end

  def test_update_valid
    Song.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Song.first
    assert_redirected_to song_url(assigns(:song))
  end

  def test_destroy
    song = Song.first
    delete :destroy, :id => song
    assert_redirected_to songs_url
    assert !Song.exists?(song.id)
  end
end
