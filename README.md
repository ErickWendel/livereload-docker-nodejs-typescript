# Example for live reload using Node.js and Docker

- After installing Docker and Docker Compose you'd run `docker-compose up --build`
- Going to `localhost:8080` you'd find a page with an static image
- Going to `./Index.ts` you'd change the image name and see the change on the browser

## What

- This project will show how to use live reload functions by using a build process as an example. It uses Typescript and after each change, the Typescript must rebuild and the nodemon must reload to apply the changes. All of it, happens using only a command such as `docker-compose up`.
