import org.gradle.api.tasks.testing.logging.TestExceptionFormat
import org.gradle.api.tasks.testing.logging.TestLogEvent
import org.jetbrains.kotlin.gradle.tasks.KotlinCompile

buildscript {
    repositories {
        jcenter()
        mavenCentral()
        mavenLocal()
    }
    dependencies {
        classpath(Libs.kotlin_stdlib)
        classpath(Libs.kotlin_jdk8)
        classpath(Libs.kotlin_reflect)
    }
}

repositories {
    jcenter()
    mavenCentral()
    mavenLocal()
    maven(url = "https://dl.bintray.com/konform-kt/konform")
}

plugins {
    java
    kotlin("jvm")
    id("org.springframework.boot") version "2.3.0.RELEASE"
    id("io.spring.dependency-management") version "1.0.9.RELEASE"
    kotlin("plugin.spring") version "1.3.72"
}

subprojects {
    group = "com.pabdulin.mainApp"

    apply {
        plugin("java")
    }

    repositories {
        jcenter()
        mavenCentral()
        mavenLocal()
        maven(url = "https://dl.bintray.com/konform-kt/konform")
    }

    tasks {
        withType<KotlinCompile> {
            kotlinOptions {
                jvmTarget = "1.8"
            }
        }
        withType<Test> {
            useJUnitPlatform()

            maxParallelForks = 10

            testLogging {
                events(TestLogEvent.PASSED, TestLogEvent.FAILED, TestLogEvent.SKIPPED)
                showStandardStreams = true
                exceptionFormat = TestExceptionFormat.FULL
            }
        }
    }
}
dependencies {
    // kotlin
    implementation(kotlin("stdlib-jdk8"))
    implementation("org.jetbrains.kotlin:kotlin-reflect")

    // spring
    implementation("org.springframework.boot:spring-boot-starter-web")
    implementation("com.fasterxml.jackson.module:jackson-module-kotlin")
    developmentOnly("org.springframework.boot:spring-boot-devtools")
    testImplementation("org.springframework.boot:spring-boot-starter-test") {
        exclude(group = "org.junit.vintage", module = "junit-vintage-engine")
    }
}

tasks.withType<Test> {
    useJUnitPlatform()
}

val compileKotlin: KotlinCompile by tasks
compileKotlin.kotlinOptions {
    jvmTarget = "1.8"
}
val compileTestKotlin: KotlinCompile by tasks
compileTestKotlin.kotlinOptions {
    jvmTarget = "1.8"
}