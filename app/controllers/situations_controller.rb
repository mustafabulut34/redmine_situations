class SituationsController < ApplicationController
  before_filter :find_project, :authorize, :only => :index

  def index
    if params[:formuser] == "" || params[:formuser] == nil
      @issues = Issue.where("project_id" => @id)
    else
      @issues = Issue.where({project_id: @id, author_id: params[:formuser]})
    end
    @forusers = Issue.where("project_id" => @id).group("author_id")
    @jrsd = JournalDetail.where("prop_key" => "status_id")
    @i=0
    @ids = []
    @jrsd.each do |t|
      @ids[@i] = t.journal_id
      @i+=1
    end
    @jrs = Journal.where(:id => @ids)
  end
  
  private

  def find_project
    @project = Project.find_by_identifier(params[:project_id])
    @id=@project.id
  end
end