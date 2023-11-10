# filename: dockerfile

# Base image
FROM node:18

# Get the latest version of Playwright
FROM mcr.microsoft.com/playwright:v1.39.0-jammy

# Set the working directory
WORKDIR /app

# install other deps and browser
RUN npx playwright install
RUN npx playwright install-deps

# Set the entry point for the container
CMD ["bash"]