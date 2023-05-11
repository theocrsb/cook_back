package com.cook.cook.controllers;

import java.util.List;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.cook.cook.models.Member;
import com.cook.cook.repositories.MemberRepository;

@RestController
public class MemberController {

    private final MemberRepository repository;

    MemberController(MemberRepository repository) {
        this.repository = repository;
    }

    // Aggregate root
    // tag::get-aggregate-root[]
    // GET ALL MEMBERS => curl -v localhost:8080/members
    @GetMapping("/members")
    List<Member> all() {
        return repository.findAll();
    }
    // end::get-aggregate-root[]

    @PostMapping("/member")
    Member newMember(@RequestBody Member newMember) {
        return repository.save(newMember);
    }

    // Single item

    @GetMapping("/member/{id}")
    Member one(@PathVariable Long id) {

        return repository.findById(id)
                .orElseThrow(() -> new MemberNotFoundException(id));
    }

    @PutMapping("/member/{id}")
    Member replaceMember(@RequestBody Member newMember, @PathVariable Long id) {

        return repository.findById(id)
                .map(member -> {
                    member.setEmail(newMember.getEmail());
                    member.setPassword(newMember.getPassword());
                    member.setPseudo(newMember.getPseudo());
                    return repository.save(member);
                })
                .orElseGet(() -> {
                    newMember.setId(id);
                    return repository.save(newMember);
                });
    }

    @DeleteMapping("/member/{id}")
    void deleteMember(@PathVariable Long id) {
        repository.deleteById(id);
    }
}
