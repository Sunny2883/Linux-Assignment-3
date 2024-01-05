display_menu() {
 echo "Menu:"
 echo "1. List files in a directory"
 echo "2. Create a new directory"
 echo "3. Copy a file to another directory"
 echo "4. Quit"
}
# Function to list files in a directory
list_files() {
 echo "Listing files in directory: $1"
 ls -l "$1"
}
# Function to create a new directory
create_directory() {
 echo "Enter the name of the new directory: "
 read new_dir
 mkdir "$new_dir"
 echo "Directory '$new_dir' created."
}
# Function to copy a file to another directory
copy_file() {
 echo "Enter the name of the file to copy: "
 read source_file
 echo "Enter the destination directory: "
 read destination_dir
 cp "$source_file" "$destination_dir"
 echo "File '$source_file' copied to '$destination_dir'."
}
# Main script
while true; do
 display_menu
 echo "Enter your choice (1-4): "
 read choice
 case $choice in
 1)
 echo "Enter the directory path: "
 read directory_path
 list_files "$directory_path"
 ;;
 2)
 create_directory
 ;;
 3)
 copy_file
 ;;
 4)
 echo "Exiting the script. Goodbye!"
 exit 0
 ;;
 *)
 echo "Invalid choice. Please enter a number between 1 and 4."
 ;;
 esac
done
chmod +x file_system_interaction.sh
./file_system_interaction.sh