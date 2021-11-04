package com.qanyn.config;

import com.qanyn.model.Admin;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class PasswordMatchesValidator implements ConstraintValidator<com.qanyn.config.PasswordMatches, Object> {
    @Override
    public void initialize(com.qanyn.config.PasswordMatches constraintAnnotation) {
    }
    @Override
    public boolean isValid(Object obj, ConstraintValidatorContext context){
        Admin admin = (Admin) obj;
        return admin.getPassword().equals(admin.getMatchingPassword());
    }

}
