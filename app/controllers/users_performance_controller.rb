class UsersPerformanceController < ApplicationController
  unloadable

  def index
    @project = Project.find(params[:project_id])
    @time_entries = TimeEntry.where(project_id: @project)
    @grouped_time_entries = Hash.new
    @total_time = 0
    @time_entries.each do |e|
      @grouped_time_entries.has_key?(e.user.name) ? @grouped_time_entries[e.user.name] = @grouped_time_entries[e.user.name] + e.hours : @grouped_time_entries[e.user.name] = e.hours
      @total_time = @total_time + e.hours
    end
  end
end
