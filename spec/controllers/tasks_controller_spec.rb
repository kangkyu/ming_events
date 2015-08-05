require 'rails_helper'

RSpec.describe TasksController, :type => :controller do
  describe "GET index" do
    it "assigns all tasks as @tasks" do
      @task = Task.create!(
        title: "reserve location",
        description: "at least, 2 weeks earlier. Set reminder!"
      )
      # @tasks = Task.all
      get :index
      expect(assigns(:tasks)).to eq([@task])

      expect(response.status).to eq(200)
      expect(response).to render_template("tasks/index")
    end
  end
  describe "GET show" do
    it "assigns the requested task as @task" do
      # The action 'show' not for TasksController
    end
  end
  # describe "GET new" do
  #   it "assigns a new task as @task"
  # end
  # describe "GET edit" do
  #   it "assigns the requested task as @task"
  # end
  # describe "POST create"
  #   context "with valid params" do
  #     it "creates a new task"
  #     it "assigns a newly created task as @task"
  #     it "redirects to the created task"
  #   end
  #   context "with invalid params" do
  #     it "assigns a newly created but unsaved task as @task"
  #     it "re-renders the 'new' template"
  #   end
  # describe "PUT update" do
  #   context "with valid params" do
  #     it "updates the requested task"
  #     it "assigns the requested task as @task"
  #     it "redirects to the task"
  #   end
  #   context "with invalid params" do
  #     it "assigns the task as @task"
  #     it "re-renders the 'edit' template"
  #   end
  # end
  # describe "DELETE destroy" do
  #   it "destroys the requested task"
  #   it "redirects to the tasks list"
  # end
end
