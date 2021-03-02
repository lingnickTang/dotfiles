#!bin/bash
link() {
	from="$1"
	to="$2"
	echo "Linking '$from' to '$to'"
#	rm -f "$to"
#	ln -s $from $to
}

curPath=$(dirname $(readlink -f "$0"))
echo $curPath 
test='install.sh'
for file in $(ls $curPath); do
	if [[ $file = $test ]]; then
		continue
	fi
	src=$curPath'/'$file
	obj=$HOME'/.'$file
	link $src $obj
done

