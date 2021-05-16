package tech.llee.conference.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import tech.llee.conference.model.User;

@RestController
public class UserController {

    @GetMapping("/user")
    public User getUser(@RequestParam(value = "firstname", defaultValue = "Erico")String firstname,
                        @RequestParam(value = "lastname", defaultValue = "Gozzi")String lastname,
                        @RequestParam(value = "age", defaultValue = "20")int age){

        User user = new User(firstname, lastname, age);

        return user;
    }

    @PostMapping("/user")
    public User addUser(User user){

        System.out.println("User firstName: " + user.getFirstName());

        User newUser = new User(user.getFirstName(), user.getLastName(), user.getAge());

        return newUser;
    }
}
