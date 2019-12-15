for seq in $(cat requirements.txt  )
do
        pip install $seq
done
