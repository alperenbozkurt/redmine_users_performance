class UsersPerformanceController < ApplicationController
  unloadable

  def index
    @project = Project.find(params[:project_id])
    @time_entries = TimeEntry.where(project_id: @project)
    @grouped_time_entries = Hash.new
    @total_time = 0
    @time_entries.each do |e| # Time entries of users are grouped
      @grouped_time_entries.has_key?(e.user) ? @grouped_time_entries[e.user] = @grouped_time_entries[e.user] + e.hours : @grouped_time_entries[e.user] = e.hours
      @total_time = @total_time + e.hours # Total Time calculated 
    end
  end
end
