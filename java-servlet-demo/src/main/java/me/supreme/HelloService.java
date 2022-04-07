package me.supreme;

import org.springframework.stereotype.Service;

@Service
public class HelloService {
    public String getName() {
        return "Bean - Supreme";
    }
}
