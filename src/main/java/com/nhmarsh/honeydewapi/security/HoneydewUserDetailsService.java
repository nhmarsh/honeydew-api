package com.nhmarsh.honeydewapi.security;

import com.nhmarsh.honeydewapi.entity.Role;
import com.nhmarsh.honeydewapi.entity.Task;
import com.nhmarsh.honeydewapi.entity.User;
import com.nhmarsh.honeydewapi.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

@Component
@Transactional
public class HoneydewUserDetailsService implements UserDetailsService {

    private final UserRepository userRepository;

    @Autowired
    public HoneydewUserDetailsService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }


    @Override
    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
        List<User> users = userRepository.findAllByUsername(userName);

        if(users == null || users.isEmpty()) {
            throw new UsernameNotFoundException("User " + userName + " not found!");
        }

        User user = users.get(0);


        List<Role> userRoles = user.getRoles();
        List<Task> userTasks = user.getTasks();
        List<GrantedAuthority> authorities = new ArrayList<>();
        if(userRoles != null) {
            for(Role role : userRoles) {
                authorities.add(new SimpleGrantedAuthority(role.getRoleName()));
            }
        }


        org.springframework.security.core.userdetails.User userDetails = new org.springframework.security.core.userdetails.User(user.getUsername(), user.getPassword(),
                true, true, true, true, authorities);
        return userDetails;
    }
}
