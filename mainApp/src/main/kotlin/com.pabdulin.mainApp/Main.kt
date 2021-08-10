package com.pabdulin.mainApp

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@SpringBootApplication
class DemoApplication

fun main(args: Array<String>) {
    runApplication<DemoApplication>(*args)
}


@RestController
class MainController {

    @GetMapping(path = ["/"])
    fun helloThere(): String {
        return """{"message": "HelloThere v1"}"""
    }
}