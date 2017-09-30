#!/bin/bash

datasettobesearched=${1:-data.txt}
listofcolomnstobe extracted=${2:-list.txt}

awk -F, -v colsFile="$listofcolomnstobe extracted" '
   BEGIN {
     j=1
     while ((getline < colsFile) > 0) {
        col[j++] = $1
     }
     n=j-1;
     close(colsFile)
     for (i=1; i<=n; i++) s[col[i]]=i
   }
   NR==1 {
     for (f=1; f<=NF; f++)
       if ($f in s) c[s[$f]]=f
     next
   }
   { sep=""
     for (f=1; f<=n; f++) {
       printf("%c%s",sep,$c[f])
       sep=FS
     }
     print ""
   }
' "$datasettobesearched