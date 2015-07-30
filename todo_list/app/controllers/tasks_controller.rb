class TasksController < ApplicationController
  def index
  end

  def create
    @task = Task.create(description: params[:task][:description])

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

  def update
  end
end
