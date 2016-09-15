class TasksController < ApplicationController
  skip_before_action :signed_in_user,  only:[:new, :create]
  before_action :currect_user_is_the_owner, only: [:edit, :update, :destroy]
  # GET /tasks
  def index
    if logged_in?
      @tasks = current_user.tasks
    else
      rendirect_to '/login'
    end

  end

  # GET /tasks/1
  def show
    @task = Task.find(params[:id])
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit

  end

  # POST /tasks
  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Task was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /tasks/1
  def update
    #@task = Task.find(params[:id])
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /tasks/1
  def destroy
    #@task = Task.find(params[:id])
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:name, :due_date, :completed, :user_id)
    end

    def currect_user_is_the_owner
      @task = Task.find(params[:id])
      @user = @task.user

      unless @user.id == current_user.id
        redirect_to tasks_path notice: 'Access forbidden'
      end

    end
end
