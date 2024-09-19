# assignment 14
# studi kasus 10
# make a script to calculate profits book sale considering costs
# variables: unitAmount, unitSellPrice, unitProductionPrice, publishingCost, unitProductionPriceAll, initialCost, initialGain, profit
function tvSale() {
    echo "Jumlah buku yang dijual: "
    read unitAmount

    echo "Harga jual setiap buku (IDR/Rp): "
    read unitSellPrice

    echo "Harga produksi setiap buku (IDR/Rp): "
    read unitProductionPrice

    echo "Biaya penerbitan buku (IDR/Rp): "
    read publishingCost

    unitProductionPriceAll=$((unitAmount * unitProductionPrice))
    initialCost=$((unitProductionPriceAll + publishingCost))
    initialGain=$((unitAmount * unitSellPrice))
    profit=$((initialGain - initialCost))

    echo "----------------------------------------------"
    echo "Biaya total pembelian unit    : Rp $unitProductionPriceAll"
    echo "Biaya pemasaran               : Rp $publishingCost"
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