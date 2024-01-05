create_directories(){
for dir_name in "$@";do
mkdir -p "$dir_name"
echo "Directory '$dir_name' created "
done
}
create_directories dir1 dir2 dir3
