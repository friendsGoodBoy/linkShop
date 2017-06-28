package com.link.common.kit;

import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Record;
import org.springframework.beans.BeanUtils;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by linkzz on 2017-06-28.
 */
public class TreeKit {
    private List<Record> nodes;
    private List<TreeKit> trees;
    private int size = 0;

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public List<TreeKit> getTreeMenus() {
        return trees;
    }

    public void setTreeMenus(List<TreeKit> trees) {
        this.trees = trees;
    }

    public TreeKit(){}

    public TreeKit(List<Record> nodes){
        this.nodes = nodes;
    }

    public List<TreeKit> buildTree(){
        List<TreeKit> treeMenus0 = new ArrayList<>();
        if (nodes != null && nodes.size() > 0){
            for (Record node : nodes) {
                if (StrKit.isBlank(node.get("pid"))) {
                    TreeKit treeMenu = new TreeKit();
                    BeanUtils.copyProperties(node,treeMenu);
                    build(node,treeMenu);
                    treeMenus0.add(treeMenu);
                }
            }
        }
        return treeMenus0;
    }

    private void build(Record node,TreeKit treeMenu){
        List<Record> children = getChildren(node);
        if (!children.isEmpty()) {
            List<TreeKit> list = new ArrayList<>();
            for (Record child : children) {
                TreeKit treeMenu1 = new TreeKit();
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
