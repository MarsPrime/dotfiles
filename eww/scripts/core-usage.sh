#mpstat -P 0 | awk 'NF && $3 ~ /^[0-9]/ {print $3 * 10}'
mpstat -P "$1" 1 1| awk 'NF && $3 ~ /^[0-9]/{
                    if($3 <= 20.0)
                         {print 1}

                    else if($3 > 30.0 && $3 <= 45.0)
                         {print 2}

                    else 
                         {print 3}

                    }' | awk 'NR==1'

