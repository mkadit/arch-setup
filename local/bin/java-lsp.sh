#!/usr/bin/env bash

JAR="$HOME/.local/share/nvim/lspinstall/jdtls/plugins/org.eclipse.equinox.launcher_*.jar"

# GRADLE_HOME='$HOME/gradle' java \
#   -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=1044 \
#   -javaagent:$HOME/.local/src/lombok.jar \
#   -Xbootclasspath/a:$HOME/.local/src/lombok.jar \
#   -Declipse.application=org.eclipse.jdt.ls.core.id1 \
#   -Dosgi.bundles.defaultStartLevel=4 \
#   -Declipse.product=org.eclipse.jdt.ls.core.product \
#   -Dlog.protocol=true \
#   -Dlog.level=ALL \
#   -Xms1g \
#   -Xmx2G \
#   -jar $(echo "$JAR") \
#   -configuration "$HOME/.local/share/nvim/lspinstall/jdtls/config_linux" \
#   -data "${1:-$HOME/workspace}" \
#   --add-modules=ALL-SYSTEM \
#   --add-opens java.base/java.util=ALL-UNNAMED \
#   --add-opens java.base/java.lang=ALL-UNNAMED
#
#
GRADLE_HOME='$HOME/gradle' java \
  -Declipse.application=org.eclipse.jdt.ls.core.id1 \
  -Dosgi.bundles.defaultStartLevel=4 \
  -Declipse.product=org.eclipse.jdt.ls.core.product \
  -Dlog.protocol=true \
  -Dlog.level=ALL \
  -Xms1g \
  -Xmx2G \
  -jar $(echo "$JAR") \
  -configuration "$HOME/.local/share/nvim/lspinstall/jdtls/config_linux" \
  -data "${1:-$HOME/workspace}" \
  --add-modules=ALL-SYSTEM \
  --add-opens java.base/java.util=ALL-UNNAMED \
  --add-opens java.base/java.lang=ALL-UNNAMED


