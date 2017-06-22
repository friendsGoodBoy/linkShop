package com.link.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseTRoleMenu<M extends BaseTRoleMenu<M>> extends Model<M> implements IBean {

	public void setId(java.lang.String id) {
		set("ID", id);
	}

	public java.lang.String getId() {
		return get("ID");
	}

	public void setRoleId(java.lang.String roleId) {
		set("ROLE_ID", roleId);
	}

	public java.lang.String getRoleId() {
		return get("ROLE_ID");
	}

	public void setMenuId(java.lang.String menuId) {
		set("MENU_ID", menuId);
	}

	public java.lang.String getMenuId() {
		return get("MENU_ID");
	}

}
