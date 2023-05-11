package com.cook.cook.controllers;

public class MemberNotFoundException extends RuntimeException {
    MemberNotFoundException(Long id) {
        super("Could not find member " + id);
    }
}
