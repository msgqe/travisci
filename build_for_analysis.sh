#!/usr/bin/env bash
set -Eeuxo pipefail

# build everything that should be analyzed

pushd activemq-artemis-native
./scripts/compile-native.sh
popd

cd activemq-artemis
# https://scan.coverity.com/download?tab=java
# see ARTEMIS-861, Coverity Scan has similar limitations as IBM JDK, by coincidence
mvn -Pibm-jdk8 -DskipTests=true -Dmaven.javadoc.skip=true -pl \!:joram-tests,\!:soak-tests,\!:stress-tests,\!:timing-tests,\!:performance-tests,\!:integration-tests,\!:jms-tests,\!:smoke-tests,\!:compatibility-tests compile
