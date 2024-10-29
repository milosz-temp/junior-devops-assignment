# Junior DevOps Assignment

This repository contains the technical assessment for Junior DevOps candidates at UNIwise.

## Introduction

If you're applying for this position, please complete the assignment detailed below. While the assignment is intentionally open-ended to allow you to demonstrate your skills, please ensure you meet all specified requirements.

At UNIwise, we value quality over quantity. This means we prioritize working, well-structured code over partially completed features. Your code should be readable and follow consistent formatting conventions.

## Assignment

### Part 1: Required Tasks

This project includes a Docker Compose setup, but there are several issues preventing it from running properly. Your tasks are:

1. Get the project running in containers:
   - Test your solution by accessing `http://localhost:<port>` via curl or a browser
   - The page should match the reference image: ![website home](./images/website_home.png)
   - You can build the container image using either Docker or Podman: `docker/podman build -t <image-name> .`
2. Configure and run the project with all dependencies using Docker Compose:
   - The application should start using either `docker compose` or `podman-compose`
   - When working correctly, you should be able to:
     - Access the application at `localhost:8080`
     - Create new chats using the `admin` user on the front page
     - View chats in the chat list, as shown here: ![website chat](./images/website_chat.png)

### Part 2: Optional Tasks

If time permits, consider completing any of these additional tasks:

- Implement CI:
   - Choose your preferred CI tool
   - Document your implementation with screenshots in `handin.md` or provide access to the CI platform
   - Consider including:
     - Basic `go build` verification
     - Unit tests
     - Image pushing to a registry
- Add unit tests
- Optimize the Dockerfile for minimal size
- Implement "shift-left" practices using linters or similar tools
- Create Kubernetes deployment files using:
   - Kustomize
   - Raw Kubernetes YAML
   - Helm chart
   - (You can use Minikube, Kind, or MicroK8s for local testing)

## Submission Guidelines

To submit your assignment:

1. Fork this repository
2. Create a `handin.md` file in the root directory containing:
   - Setup and running instructions
   - Documentation of any unresolved issues or challenges
   - Your thoughts and considerations about the assignment
3. Grant repository access to the UNIwise reviewers as specified by your contact person. If you've used external platforms (e.g., CI services), please ensure reviewers have access to those as well.

Good luck and happy coding!
