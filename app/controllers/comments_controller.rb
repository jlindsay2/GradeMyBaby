class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def create
    @baby = Baby.find(params[:baby_id])
    @baby_comment = @baby.comments.create(comments_params)

    redirect_to baby_path(@baby)
  end

  ######## PRIVATE METHODS ##############
  private
    def comments_params
      #params.require(:baby_comment).permit(:rating, :comment)
      params.require(:comment).permit(:rating, :comment)
    end
end

=begin
class TeacherNeedsController < ApplicationController
  def index
    @teacher_needs = TeacherNeed.all
  end

  def create
    @teacher = Teacher.find(params[:teacher_id])
    @teacher_need = @teacher.teacher_needs.create(teacher_needs_params)

    redirect_to teacher_path(@teacher)
  end

  private #############################################################################################
  def teacher_needs_params
    params.require(:teacher_need).permit(:description, :status, :comments)
  end
end


=end