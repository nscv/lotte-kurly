package com.lotte.users.dto;

import java.io.Serializable;

public class KakaoDto implements Serializable {

    String nickname;
    String profile_image;
    String email;
    String age_range;
    String birthday;
    String gender;

    public KakaoDto(String nickname, String profile_image, String email, String age_range, String birthday, String gender) {
        this.nickname = nickname;
        this.profile_image = profile_image;
        this.email = email;
        this.age_range = age_range;
        this.birthday = birthday;
        this.gender = gender;
    }

    @Override
    public String toString() {
        return "KakaoDto{" +
                "nickname='" + nickname + '\'' +
                ", profile_image='" + profile_image + '\'' +
                ", email='" + email + '\'' +
                ", age_range='" + age_range + '\'' +
                ", birthday='" + birthday + '\'' +
                ", gender='" + gender + '\'' +
                '}';
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getProfile_image() {
        return profile_image;
    }

    public void setProfile_image(String profile_image) {
        this.profile_image = profile_image;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAge_range() {
        return age_range;
    }

    public void setAge_range(String age_range) {
        this.age_range = age_range;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
}
