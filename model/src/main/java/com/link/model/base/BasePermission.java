package com.link.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BasePermission<M extends BasePermission<M>> extends Model<M> implements IBean {

	public void setId(java.lang.String id) {
		set("id", id);
	}

	public java.lang.String getId() {
		return getStr("id");
	}

	public void setName(java.lang.String name) {
		set("name", name);
	}

	public java.lang.String getName() {
		return getStr("name");
	}

	public void setValue(java.lang.String value) {
		set("value", value);
	}

	public java.lang.String getValue() {
		return getStr("value");
	}

	public void setUrl(java.lang.String url) {
		set("url", url);
	}

	public java.lang.String getUrl() {
		return getStr("url");
	}

	public void setIntro(java.lang.String intro) {
		set("intro", intro);
	}

	public java.lang.String getIntro() {
		return getStr("intro");
	}

	public void setParent(java.lang.String parent) {
		set("parent", parent);
	}

	public java.lang.String getParent() {
		return getStr("parent");
	}

	public void setCreatedAt(java.lang.String createdAt) {
		set("created_at", createdAt);
	}

	public java.lang.String getCreatedAt() {
		return getStr("created_at");
	}

	public void setUpdatedAt(java.lang.String updatedAt) {
		set("updated_at", updatedAt);
	}

	public java.lang.String getUpdatedAt() {
		return getStr("updated_at");
	}

	public void setDeletedAt(java.lang.String deletedAt) {
		set("deleted_at", deletedAt);
	}

	public java.lang.String getDeletedAt() {
		return getStr("deleted_at");
	}

	public void setLoaded(java.lang.String loaded) {
		set("loaded", loaded);
	}

	public java.lang.String getLoaded() {
		return getStr("loaded");
	}

}
