class SituationsController < ApplicationController
  before_filter :find_project, :authorize, :only => :index

  def index
    if params[:formuser] == "" || params[:formuser] == nil
      @issues = Issue.where("project_id" => @id)
    else
      @issues = Issue.where({project_id: @id, author_id: params[:formuser]})
    end
    @forusers = Issue.where("project_id" => @id).group("author_id")
    @jrs = Journal.all
    @jrsd = JournalDetail.where("prop_key" => "status_id")
  end
  
  private

  def find_project
    @project = Project.find_by_identifier(params[:project_id])
    @id=@project.id
  end
end
