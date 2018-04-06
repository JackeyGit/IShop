package com.pojo;

public class Address {
	
	private Integer addressid;
	private String  addname;
	private String ShortName;
	private String ParentId;
	private Integer LevelType;
	private Integer CityCode;
	private Integer ZipCode;
	private String MergerName;
	private Double lng;  //经度
	private Double Lat;  //纬度
	private String Pinyin;
	public Integer getAddressid() {
		return addressid;
	}
	public void setAddressid(Integer addressid) {
		this.addressid = addressid;
	}
	public String getAddname() {
		return addname;
	}
	public void setAddname(String addname) {
		this.addname = addname;
	}
	public String getShortName() {
		return ShortName;
	}
	public void setShortName(String shortName) {
		ShortName = shortName;
	}
	public String getParentId() {
		return ParentId;
	}
	public void setParentId(String parentId) {
		ParentId = parentId;
	}
	public Integer getLevelType() {
		return LevelType;
	}
	public void setLevelType(Integer levelType) {
		LevelType = levelType;
	}
	public Integer getCityCode() {
		return CityCode;
	}
	public void setCityCode(Integer cityCode) {
		CityCode = cityCode;
	}
	public Integer getZipCode() {
		return ZipCode;
	}
	public void setZipCode(Integer zipCode) {
		ZipCode = zipCode;
	}
	public String getMergerName() {
		return MergerName;
	}
	public void setMergerName(String mergerName) {
		MergerName = mergerName;
	}
	public Double getLng() {
		return lng;
	}
	public void setLng(Double lng) {
		this.lng = lng;
	}
	public Double getLat() {
		return Lat;
	}
	public void setLat(Double lat) {
		Lat = lat;
	}
	public String getPinyin() {
		return Pinyin;
	}
	public void setPinyin(String pinyin) {
		Pinyin = pinyin;
	}
	
	
	
}
