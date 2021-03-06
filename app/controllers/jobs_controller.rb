class JobsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @user = current_user
    @jobs = Job.all
    if params[:query].present?
      @jobs = Job.global_search(params[:query])
    end
    if params[:skill].present?
      @jobs = Job.global_search(params[:skill])
    end
     if params[:field].present?
      @jobs = Job.global_search(params[:field])
    end
  @jobs = @jobs.sort_by { |job| ((job.skills.count { |skill| @user.skills.include? skill } )/ job.skills.count.to_f * 100).round}.reverse!
  @user = current_user
  end

  def show
    @user = current_user
    @job = Job.find(params[:id])
    @userjobs = UserJob.where('job_id = ?', @job)
    @mentors = @userjobs.map do |u|
      User.find(u.user_id)
    end
  end

  def bookmark_job
    @job = Job.find(params[:job_id])
    @job.bookmarked ? @job.update(bookmarked: false) : @job.update(bookmarked: true)
     respond_to do |format|
        format.html { redirect_back(fallback_location: root_path) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
  end

  def bookmark_formation
    @job = Job.find(params[:job_id])
    @job.formations.each do |formation|
      formation.bookmarked ? formation.update(bookmarked: false) : formation.update(bookmarked: true)
    end
    @formation = params[:formation_id]
    respond_to do |format|
       format.html { redirect_back(fallback_location: root_path) }
       format.js  # <-- will render `app/views/reviews/create.js.erb`
     end
  end

  def remove_job_from_fav
    job = Job.find(params[:job_id])
    job.update(bookmarked: false)
    redirect_to users_path
  end

end
