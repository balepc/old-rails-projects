class Admin::ItemTreeNodesController < Admin::AdminController
  
  def destroy
    item = Item.find(params[:item_id])
    item.tree_nodes.delete(TreeNode.find(params[:id]))
    item.save
    
    redirect_to :back
  end
  
end