package com.to;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table
public class Property {
	@Id
	private int userId;
	@NotNull(message="Required field")
	@Min(value=0)
	private int marketValue;
	@NotNull
	@Past
	@DateTimeFormat(pattern = "yyyy")
	@Temporal(TemporalType.DATE)
	private Date builtYear;
	@NotNull(message="Required field")
	private int sqFoot;
	@NotEmpty(message="Required field")
	private String dwellingStyle;
	@NotEmpty(message="Required field")
	private String roofMaterial;
	@NotEmpty(message="Required field")
	private String garageType;
	@NotNull(message="Required field")
	private int fullBath;
	@NotNull(message="Required field")
	private int halfBath;
	@NotNull(message="Required field")
	private boolean swimmingPool;
	
	public Property() {
		
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getMarketValue() {
		return marketValue;
	}

	public void setMarketValue(int marketValue) {
		this.marketValue = marketValue;
	}


	public Date getBuiltYear() {
		return builtYear;
	}

	public void setBuiltYear(Date builtYear) {
		this.builtYear = builtYear;
	}

	public int getSqFoot() {
		return sqFoot;
	}

	public void setSqFoot(int sqFoot) {
		this.sqFoot = sqFoot;
	}

	public String getDwellingStyle() {
		return dwellingStyle;
	}

	public void setDwellingStyle(String dwellingStyle) {
		this.dwellingStyle = dwellingStyle;
	}

	public String getRoofMaterial() {
		return roofMaterial;
	}

	public void setRoofMaterial(String roofMaterial) {
		this.roofMaterial = roofMaterial;
	}

	public String getGarageType() {
		return garageType;
	}

	public void setGarageType(String garageType) {
		this.garageType = garageType;
	}

	public int getFullBath() {
		return fullBath;
	}

	public void setFullBath(int fullBath) {
		this.fullBath = fullBath;
	}

	public int getHalfBath() {
		return halfBath;
	}

	public void setHalfBath(int halfBath) {
		this.halfBath = halfBath;
	}

	public boolean isSwimmingPool() {
		return swimmingPool;
	}

	public void setSwimmingPool(boolean swimmingPool) {
		this.swimmingPool = swimmingPool;
	}

	@Override
	public String toString() {
		return "Property [userId=" + userId + ", marketValue=" + marketValue + ", builtYear=" + builtYear
				+ ", sqFoot=" + sqFoot + ", dwellingStyle=" + dwellingStyle + ", roofMaterial=" + roofMaterial
				+ ", garageType=" + garageType + ", fullBath=" + fullBath + ", halfBath=" + halfBath + ", swimmingPool="
				+ swimmingPool + "]";
	}

	public Property(@NotNull(message = "Required field") @Min(0) int marketValue, @NotNull @Past Date builtYear,
			@NotNull(message = "Required field") int sqFoot, String dwellingStyle, String roofMaterial,
			String garageType, @NotNull(message = "Required field") int fullBath,
			@NotNull(message = "Required field") int halfBath,
			@NotNull(message = "Required field") boolean swimmingPool) {
		super();
		this.marketValue = marketValue;
		this.builtYear = builtYear;
		this.sqFoot = sqFoot;
		this.dwellingStyle = dwellingStyle;
		this.roofMaterial = roofMaterial;
		this.garageType = garageType;
		this.fullBath = fullBath;
		this.halfBath = halfBath;
		this.swimmingPool = swimmingPool;
	}

	

	
}
