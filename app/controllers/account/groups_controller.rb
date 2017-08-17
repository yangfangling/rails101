class Account::GroupsController < ApplicationController
  before_action :authenticate_user!

    def index
      @groups = current_user.participated_groups
    end

    def edit
      @group = Group.find(params[:id])
    end

    def group_params
      params.require(:group).permit(:title, :description)
    end

  end
