package com.cook.cook.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cook.cook.models.Member;

public interface MemberRepository extends JpaRepository<Member, Long> {

}
