class Admin::QuestionsTreeController < Admin::AdminController
  
  def show
    @question_tree = TreeNode.new
  end
  
  def create
    @question_tree = TreeNode.new(params[:question_tree])
    @question_tree.save
    redirect_to :action => 'show'
  end
  
  def destroy
    qt = TreeNode.find(params[:question_tree][:id])
    qt.destroy
    redirect_to :action => 'show'
  end
  
end
