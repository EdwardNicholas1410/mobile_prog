# assignment 13
# studi kasus 9
# make a script to calculate profits after bulk sale
# variables: unitAmount, unitSellPrice, unitBuyPrice, promotionCost, unitBuyPriceAll, initialCost, initialGain, profit
function tvSale() {
    echo "Jumlah unit televisi dalam stok: "
    read unitAmount

    echo "Harga jual per unit televisi (IDR/Rp): "
    read unitSellPrice

    echo "Harga beli per unit televisi (IDR/Rp): "
    read unitBuyPrice

    echo "Biaya promosi dan operasional (IDR/Rp): "
    read promotionCost

    unitBuyPriceAll=$((unitAmount * unitBuyPrice))
    initialCost=$((unitBuyPriceAll + promotionCost))
    initialGain=$((unitAmount * unitSellPrice))
    profit=$((initialGain - initialCost))

    echo "----------------------------------------------"
    echo "Biaya total pembelian unit    : Rp $unitBuyPriceAll"
    echo "Biaya pemasaran               : Rp $promotionCost"
    echo "----------------------------------------------"
    echo "Jumlah penjualan unit         : Rp $unitAmount"
    echo "Harga penjualan per unit      : Rp $unitSellPrice"
    echo "----------------------------------------------"
    echo "Biaya awal                    : Rp $initialCost"
    echo "Hasil awal                    : Rp $initialGain"
    echo "Keuntungan                    : Rp $profit"
    echo "----------------------------------------------"

    if [ $profit -lt 0 ]; then
        echo "Penjualan akan mengahasilkan rugi sebanyak ${profit#-}"
    else
        echo "Penjualan akan menghasilkan keuntungan sebanyak $profit"
    fi
}

tvSale