#!/bin/bash
read sal
var2=12
asal=$(bc <<< "scale=4;$sal*$var2")
if test $asal -gt 300000
then
tax=$(bc <<< "scale=4;$asal*0.3000")
echo "TAX PAYMENT REQUIRED: $tax"
else
echo "NO TAX PAYMENT REQUIRED"
fi
