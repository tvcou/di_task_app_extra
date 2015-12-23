class TasksController < ApplicationController
  def create
    @block = Block.find(params[:block_id])
    @task = @block.tasks.create(task_params)
    redirect_to block_path(@block.id)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to block_path(params[:block_id])
  end

  def toggle
    render nothing: true
    @task = Task.find(params[:id])
    @task.done = !@task.done
    @task.save
  end

  private def task_params
    params[:task].permit(:title)
  end
end
