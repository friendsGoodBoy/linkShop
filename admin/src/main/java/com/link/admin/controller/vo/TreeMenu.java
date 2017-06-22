package com.link.admin.controller.vo;

import com.link.model.TMenu;
import org.springframework.beans.BeanUtils;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by linkzz on 2017-06-10.
 */
public class TreeMenu extends TMenu {
    private List<TMenu> nodes;
    private List<TreeMenu> treeMenus;
    private int size = 0;

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public List<TreeMenu> getTreeMenus() {
        return treeMenus;
    }

    public void setTreeMenus(List<TreeMenu> treeMenus) {
        this.treeMenus = treeMenus;
    }

    public TreeMenu(){}

    public TreeMenu(List<TMenu> nodes){
        this.nodes = nodes;
    }

    public List<TreeMenu> buildTree(){
        List<TreeMenu> treeMenus0 = new ArrayList<>();
        for (TMenu node : nodes) {
            if (node.getPid() == null) {
                TreeMenu treeMenu = new TreeMenu();
                BeanUtils.copyProperties(node,treeMenu);
                build(node,treeMenu);
                treeMenus0.add(treeMenu);
            }
        }
        return treeMenus0;
    }

    private void build(TMenu node,TreeMenu treeMenu){
        List<TMenu> children = getChildren(node);
        if (!children.isEmpty()) {
            List<TreeMenu> list = new ArrayList<>();
            for (TMenu child : children) {
                TreeMenu treeMenu1 = new TreeMenu();
                BeanUtils.copyProperties(child,treeMenu1);
                build(child,treeMenu1);
                list.add(treeMenu1);
            }
            treeMenu.setTreeMenus(list);
            treeMenu.setSize(children.size());
        }
    }

    private List<TMenu> getChildren(TMenu node){
        List<TMenu> children = new ArrayList<TMenu>();
        String id = node.getId();
        for (TMenu child : nodes) {
            if (id.equals(child.getPid())) {
                children.add(child);
            }
        }
        return children;
    }
}
