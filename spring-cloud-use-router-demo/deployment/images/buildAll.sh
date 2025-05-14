# 构建backend镜像
imageRegistry=$1
mvn clean package -f ../../backend/pom.xml
rm -f backend/*.jar
cp ../../backend/target/backend.jar backend/
bash backend/build.sh $imageRegistry

# 构建gateway镜像
mvn clean package -f ../../gateway/pom.xml
rm -f gateway/*.jar
cp ../../gateway/target/gateway.jar gateway/
bash gateway/build.sh $imageRegistry
