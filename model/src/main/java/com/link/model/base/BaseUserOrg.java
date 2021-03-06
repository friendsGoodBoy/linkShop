package com.link.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseUserOrg<M extends BaseUserOrg<M>> extends Model<M> implements IBean {

	public void setId(java.lang.String id) {
		set("id", id);
	}

	public java.lang.String getId() {
		return getStr("id");
	}

	public void setUserId(java.lang.String userId) {
		set("user_id", userId);
	}

	public java.lang.String getUserId() {
		return getStr("user_id");
	}

	public void setOrgId(java.lang.Integer orgId) {
		set("org_id", orgId);
	}

	public java.lang.Integer getOrgId() {
		return getInt("org_id");
	}

}
