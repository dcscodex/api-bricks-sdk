mvn clean install -DskipTests
mvn -B release:prepare release:perform -DskipTests
