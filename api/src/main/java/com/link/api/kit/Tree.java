package com.link.api.kit;

import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Record;
import com.link.model.Menu;
import org.springframework.beans.BeanUtils;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by linkzz on 2017-06-10.
 */
public class Tree extends Menu {
    private List<Record> nodes;
    private List<Tree> trees;
    private int size = 0;

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public List<Tree> getTreeMenus() {
        return trees;
    }

    public void setTreeMenus(List<Tree> trees) {
        this.trees = trees;
    }

    public Tree(){}

    public Tree(List<Record> nodes){
        this.nodes = nodes;
    }

    public List<Tree> buildTree(){
        List<Tree> treeMenus0 = new ArrayList<>();
        if (nodes != null && nodes.size() > 0){
            for (Record node : nodes) {
                if (StrKit.isBlank(node.get("pid"))) {
                    Tree treeMenu = new Tree();
                    BeanUtils.copyProperties(node,treeMenu);
                    build(node,treeMenu);
                    treeMenus0.add(treeMenu);
                }
            }
        }
        return treeMenus0;
    }

    private void build(Record node,Tree treeMenu){
        List<Record> children = getChildren(node);
        if (!children.isEmpty()) {
            List<Tree> list = new ArrayList<>();
            for (Record child : children) {
                Tree treeMenu1 = new Tree();
                BeanUtils.copyProperties(child,treeMenu1);
                build(child,treeMenu1);
                list.add(treeMenu1);
            }
            treeMenu.setTreeMenus(list);
            treeMenu.setSize(children.size());
        }
    }

    private List<Record> getChildren(Record node){
        List<Record> children = new ArrayList<Record>();
        String id = node.get("id");
        for (Record child : nodes) {
            if (id.equals(child.get("pid"))) {
                children.add(child);
            }
        }
        return children;
    }
}
