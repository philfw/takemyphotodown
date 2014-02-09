require 'test_helper'

class TakedownsControllerTest < ActionController::TestCase
  setup do
    @takedown = takedowns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:takedowns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create takedown" do
    assert_difference('Takedown.count') do
      post :create, takedown: { as_guest: @takedown.as_guest, cell_phone_number: @takedown.cell_phone_number, destination_emails: @takedown.destination_emails, electronically_signed_datetime: @takedown.electronically_signed_datetime, email_address: @takedown.email_address, first_name: @takedown.first_name, home_phone_number: @takedown.home_phone_number, images_confirmed: @takedown.images_confirmed, last_name: @takedown.last_name, mailing_address1: @takedown.mailing_address1, mailing_address2: @takedown.mailing_address2, mailing_city: @takedown.mailing_city, mailing_state: @takedown.mailing_state, mailing_zip: @takedown.mailing_zip, mark_for_destruction: @takedown.mark_for_destruction, middle_initial: @takedown.middle_initial, notice_date: @takedown.notice_date, offending_urls: @takedown.offending_urls, offending_website_names: @takedown.offending_website_names, photograph_descriptions: @takedown.photograph_descriptions, user_id: @takedown.user_id }
    end

    assert_redirected_to takedown_path(assigns(:takedown))
  end

  test "should show takedown" do
    get :show, id: @takedown
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @takedown
    assert_response :success
  end

  test "should update takedown" do
    patch :update, id: @takedown, takedown: { as_guest: @takedown.as_guest, cell_phone_number: @takedown.cell_phone_number, destination_emails: @takedown.destination_emails, electronically_signed_datetime: @takedown.electronically_signed_datetime, email_address: @takedown.email_address, first_name: @takedown.first_name, home_phone_number: @takedown.home_phone_number, images_confirmed: @takedown.images_confirmed, last_name: @takedown.last_name, mailing_address1: @takedown.mailing_address1, mailing_address2: @takedown.mailing_address2, mailing_city: @takedown.mailing_city, mailing_state: @takedown.mailing_state, mailing_zip: @takedown.mailing_zip, mark_for_destruction: @takedown.mark_for_destruction, middle_initial: @takedown.middle_initial, notice_date: @takedown.notice_date, offending_urls: @takedown.offending_urls, offending_website_names: @takedown.offending_website_names, photograph_descriptions: @takedown.photograph_descriptions, user_id: @takedown.user_id }
    assert_redirected_to takedown_path(assigns(:takedown))
  end

  test "should destroy takedown" do
    assert_difference('Takedown.count', -1) do
      delete :destroy, id: @takedown
    end

    assert_redirected_to takedowns_path
  end
end
