## project setup
1. created empty "Console App" Kt project using IJ IDEA 2021.2 (Gradle Kotlin, JUnit 5, openjdk 16)
2. added `.gitignore` from sample app `enterprise_dev_course`
3. added `buildSrc` from final sample acts as a single-source for lib version
4. added `mainApp` from `37a064d` of the sample. Seems like the tests are not working properly yet.

## gradle 
1. use "gradle --stop" to stop running servers for whatever reason
2. use .\gradlew -q projects to check projects structure seealso: https://docs.gradle.org/current/userguide/multi_project_builds.html

## template improvements
1. jcenter is shutting down, remove.

