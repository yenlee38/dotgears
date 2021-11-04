package com.qanyn.config;

import com.qanyn.service.MyUserDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;

@Configuration
@EnableWebSecurity
public class ApplicationConfiguration extends WebSecurityConfigurerAdapter {
    @Autowired
    private MyUserDetailsService myUserDetailsService;

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(myUserDetailsService).passwordEncoder(NoOpPasswordEncoder.getInstance());

    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests().antMatchers("/login", "/h2-console/**").permitAll()
                .antMatchers("/qanyn/admin**").access("hasAnyRole('ADMIN', 'SUBADMIN')")
                .antMatchers( "/qanyn/admin/account**").access("hasRole('ADMIN')")
//                .antMatchers("/qanyn/**").permitAll()
                .and()
                .formLogin()
//                .loginPage("/qanyn/login")
                .defaultSuccessUrl("/qanyn/admin/post");

        http.csrf().disable();
        http.headers().frameOptions().disable();
    }

}
