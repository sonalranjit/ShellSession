for i in {1..10}
do
    mkdir "folder$i"
    touch folder$i/file$i.txt
    echo "This is text file number $i in folder$i" > folder$i/file$i.txt 
done

ls -l > log.txt
