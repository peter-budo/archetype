mvn cobertura:cobertura;
mvn findbugs:findbugs;
mvn pmd:pmd;
mvn test;
mvn checkstyle:checkstyle;
mvn findbugs:findbugs;
lint --config team-props/lint.xml --xml lint-results.xml .;