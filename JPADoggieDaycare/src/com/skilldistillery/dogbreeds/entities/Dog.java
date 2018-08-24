package com.skilldistillery.dogbreeds.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Dog {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String name;

	private String breed;

	private String age;

	private String gender;
	@Column(name = "photo_link")
	private String photoLink;
	@Column(name = "weight_lbs")
	private int weightLbs;

	private String nickname;
	
	// End Fields

	public Dog(int id, String name, String breed, String age, String gender, String photoLink, int weightLbs,
			String nickname) {
		this.id = id;
		this.name = name;
		this.breed = breed;
		this.age = age;
		this.gender = gender;
		this.photoLink = photoLink;
		this.weightLbs = weightLbs;
		this.nickname = nickname;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBreed() {
		return breed;
	}

	public void setBreed(String breed) {
		this.breed = breed;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhotoLink() {
		return photoLink;
	}

	public void setPhotoLink(String photoLink) {
		this.photoLink = photoLink;
	}

	public int getWeightLbs() {
		return weightLbs;
	}

	public void setWeightLbs(int weightLbs) {
		this.weightLbs = weightLbs;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public Dog() {
	}

	@Override
	public String toString() {
		return "Dog id: " + id + ", name: " + name + ", breed: " + breed + ", age: " + age + ", gender: " + gender
				+ ", photoLink: " + photoLink + ", weightLbs: " + weightLbs + ", nickname: " + nickname;
	}

}
