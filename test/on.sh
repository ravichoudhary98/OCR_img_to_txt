BPATH=$1  
OPATH=$2  
LANG=$3  

if [ ! -d "$OPATH" ]; then
    mkdir -p "$OPATH"
fi
for FILEPATH in $BPATH*; do
    OUTFILE=$OPATH$(basename $FILEPATH)
            touch "$OUTFILE"
            convert -density 300 "$FILEPATH" -depth 8  -background white \
                    -alpha on out.tiff > /home/ravi/Desktop/IIT_BHU/Sanskrit_image_to_text3/test/on/null 2>&1
            tesseract out.tiff "$OUTFILE" -l $LANG > /home/ravi/Desktop/IIT_BHU/Sanskrit_image_to_text3/test/on/null 2>&1
            rm out.tiff
            rm $OUTFILE           
            

done
