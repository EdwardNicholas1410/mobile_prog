# assignment 10
# studi kasus 6
# make a script to calculate the profits of a certain amount of product sales, accounting for initial costs
# variables: developmentCost, advertisingCost, salesUnit, priceUnit, initialCost, initialGain, profit
function profitCalculator() {
    echo "Biaya pengembangan (IDR/Rp): " # ask for developmentCost value
    read developmentCost # store value

    echo "Biaya pemasaran (IDR/Rp): " # ask for advertisingCost value
    read advertisingCost # store value    

    echo "Perkiraan jumlah penjualan unit: " # ask for salesUnit value
    read salesUnit

    echo "Harga per unit untuk penjualan (IDR/Rp): " # ask for priceUnit value
    read priceUnit

    initialCost=$((developmentCost + advertisingCost)) # calculate initialCost value
    initialGain=$((salesUnit * priceUnit)) # calculate initialGain value
    profit=$((initialGain - initialCost)) # calculate profit value

    echo "----------------------------------------------" # line divider
    echo "Biaya pengembangan    : Rp $developmentCost" # display 
    echo "Biaya pemasaran       : Rp $advertisingCost"
    echo "----------------------------------------------"
    echo "Jumlah penjualan unit : Rp $salesUnit"
    echo "Harga penjualan unit  : Rp $priceUnit"
    echo "----------------------------------------------"
    echo "Biaya awal            : Rp $initialCost"
    echo "Hasil awal            : Rp $initialGain"
    echo "Keuntungan            : Rp $profit"

    if [ $profit -lt 0 ]; then
        echo "Penjualan akan mengahasilkan rugi sebanyak ${profit#-} setelah menjual 10.000 unit"
    else
        echo "Penjualan akan menghasilkan keuntungan sebanyak $profit setelah menjual 10.000 unit"
    fi
}

profitCalculator