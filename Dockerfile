# A Dockerfile is a text document that contains all the commands needed to build an image.
# It has a list of instructions that are executed in order to create the image.
# The instructions are kept in the Dockerfile at the root of the context of your image.
#FROM instruction sets the base image for the new image. In this case, the base image is the official
#openjdk:24-jdk image, which is a JDK (Java Development Kit) version 24 image. This image is used to provide
#the necessary environment for
#FROM instruction sets the base image for the new image. In this case, the base image is the official
#openjdk:24-jdk image, which is a JDK (Java Development Kit) version 24 image. This image is used to provide
#the necessary environment for

#RUN ./mvnw clean install -DskipTests



FROM openjdk:24-jdk
#ADD instruction copies new files or directories from <source> and adds them to the filesystem of the image at the path <destination>

# Print message to console during build

# Build the application (for example, a Java application)



ADD  target/simple-student-app.jar simple-student-app.jar

#The EXPOSE 8080 instruction tells Docker that the application inside the container is listening on port 8080.
#This means that when the container is
#However, it does not automatically make the port accessible from outside the container. To do that, you would need to use the -p flag when
EXPOSE 8080

# An ENTRYPOINT allows you to configure a container that will
# The ENTRYPOINT specifies a command that will always be executed when the container starts.

ENTRYPOINT ["java", "-jar", "simple-student-app.jar"]

# To build this image,
# $ docker build -t kk/simple-student-app:v3   .
#
# The -t flag allows us to specify a name for the image we're building.
# The syntax for this flag is: -t <name>, where <name> is the name we want to give to the image.
# The :v3 at the end of the name specifies the version of the image.





# Dockerfile Syntax Reference
#Keyword	Purpose
#FROM	Defines the base image.
#
#COPY	Copies files from the host to the container.
#ADD	Similar to COPY, with extra features like extraction.
#CMD	Defines the default command when
#ENTRYPOINT	Sets the main application/process to
#ENV	Sets environment variables.
#EXPOSE	Exposes a port for external access.
#WORKDIR	Sets the working directory inside the container.
#USER	Specifies the user to
#VOLUME	Defines a mount point to persist data.
#ARG	Sets a build-time variable.
#ONBUILD	Specifies a trigger for child images.
#LABEL	Adds metadata to the image.
#SHELL	Specifies a custom shell for commands.
