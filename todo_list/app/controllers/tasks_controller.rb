class TasksController < ApplicationController
  def index
  end

  def create
    @task = Task.create(
      description: params[:task][:description],
      completed: false)

    redirect_to root_path
  end

  def complete
    moded_task = Task.find(params[:task_id])
    moded_task.completed = !moded_task.completed
    moded_task.save
    redirect_to root_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_path
  end

  def completed
    @tasks = Task.where(completed: true)
    render 'home/index'
  end

  def incomplete
    @tasks = Task.where(completed: false)
    render 'home/index'
  end

  def delete_completed
    @tasks = Task.where(completed: true)
    @tasks.destroy_all
    redirect_to root_path
  end

  def edit

  end

  def update
    @task = Task.find(params[:id])
    @task.description = params[:task][:description]
    @task.save
    redirect_to root_path
  end
end
