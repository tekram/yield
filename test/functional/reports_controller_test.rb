require 'test_helper'

class ReportsControllerTest < ActionController::TestCase
  setup do
    @report = reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create report" do
    assert_difference('Report.count') do
      post :create, report: { accession_number: @report.accession_number, attending_id: @report.attending_id, certainty: @report.certainty, department: @report.department, dob: @report.dob, exam_code: @report.exam_code, exam_date: @report.exam_date, impression: @report.impression, positivity: @report.positivity, pseudo_mrn: @report.pseudo_mrn, report: @report.report, requesting_md_id: @report.requesting_md_id }
    end

    assert_redirected_to report_path(assigns(:report))
  end

  test "should show report" do
    get :show, id: @report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @report
    assert_response :success
  end

  test "should update report" do
    put :update, id: @report, report: { accession_number: @report.accession_number, attending_id: @report.attending_id, certainty: @report.certainty, department: @report.department, dob: @report.dob, exam_code: @report.exam_code, exam_date: @report.exam_date, impression: @report.impression, positivity: @report.positivity, pseudo_mrn: @report.pseudo_mrn, report: @report.report, requesting_md_id: @report.requesting_md_id }
    assert_redirected_to report_path(assigns(:report))
  end

  test "should destroy report" do
    assert_difference('Report.count', -1) do
      delete :destroy, id: @report
    end

    assert_redirected_to reports_path
  end
end
