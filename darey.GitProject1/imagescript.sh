#!/bin/bash

# Define the folder containing the images
image_folder="./images"

# Define the output README file
readme_file="README.md"

# Check if the image folder exists
if [ ! -d "$image_folder" ]; then
  echo "Image folder '$image_folder' does not exist."
  exit 1
fi

# Check if the README file exists; create it if not
if [ ! -e "$readme_file" ]; then
  touch "$readme_file"
fi


# Loop through the images in the folder and append their paths to the README file
for image_file in "$image_folder"/*; do
  # Get the relative or absolute path of the image
  image_path="$image_file"

  # Append the image path to the README file
  echo "$image_path" >> "$readme_file"
done

echo "Image paths from '$image_folder' have been appended to '$readme_file'."