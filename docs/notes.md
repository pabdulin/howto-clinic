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

## course
ADR sample: https://github.com/surovtsev/madr-ru/blob/main/template/template.md

## powershell
[about_Automatic_Variables](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_automatic_variables?view=powershell-7.1)
[Suppressing The Command Window Opening When Using Start-Process](https://stackoverflow.com/questions/35113917/suppressing-the-command-window-opening-when-using-start-process)
[Windows PowerShell Cheatsheet.](https://www.theochem.ru.nl/~pwormer/teachmat/PS_cheat_sheet.html)
[about_Operators](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_operators?view=powershell-7.1)
[about_Functions_Advanced_Parameters](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_functions_advanced_parameters?view=powershell-7.1)

## java vs .net refs
[Integrating .NET projects with Gradle](https://schneide.blog/2018/03/20/integrating-net-projects-with-gradle/)
[Comparison of C Sharp and Java](https://en.wikipedia.org/wiki/Comparison_of_C_Sharp_and_Java)
[Java to C# – C# to Java](https://betterprogramming.pub/java-to-c-c-to-java-f766c9f659c4)

## architecture
[Архитектура в масштабе или как мы в Tinkoff принимаем архитектурные решения](https://apolomodov.medium.com/architecture-decisions-6cff1a6bac1a)