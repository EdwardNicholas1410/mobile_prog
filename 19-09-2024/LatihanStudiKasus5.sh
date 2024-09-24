# assignment 9
# studi kasus 5
# make a script to calculate workstation procurement
# variables: computerAmount, computerCostUnit, tableAmount, tableCostUnit, chairAmount, chairCostUnit, deliverAndInstallCost, budget, computerCostTotal, tableCostTotal, chairCostTotal, procurementCostTotal, budgetRemaining
function workstationProcurement() {
    echo "Jumlah komputer yang dibeli: "
    read computerAmount

    echo "Harga komputer setiap unit (IDR/Rp): "
    read computerCostUnit

    echo "Jumlah meja yang dibeli: "
    read tableAmount

    echo "Harga meja setiap unit (IDR/Rp): "
    read tableCostUnit

    echo "Jumlah kursi yang dibeli: "
    read chairAmount

    echo "Harga kursi setiap unit (IDR/Rp): "
    read chairCostUnit

    echo "Harga instalasi semua unit (IDR/Rp): "
    read deliverAndInstallCost

    echo "Anggaran pembelian yang tersedia (IDR/Rp): "
    read budget

    computerCostTotal=$((computerAmount * computerCostUnit))
    tableCostTotal=$((tableAmount * tableCostUnit))
    chairCostTotal=$((chairAmount * chairCostUnit))

    procurementCostTotal=$((computerCostTotal + tableCostTotal + chairCostTotal + deliverAndInstallCost))

    budgetRemaining=$((budget - procurementCostTotal))

    echo "---------------------------------------------------------------"
    echo "Biaya total komputer              : Rp $computerCostTotal"
    echo "Biaya total meja                  : Rp $tableCostTotal"
    echo "Biaya total kursi                 : Rp $chairCostTotal"
    echo "Biaya pengiriman dan instalasi    : Rp $deliverAndInstallCost"
    echo "---------------------------------------------------------------"
    echo "Anggaran pembelian                : Rp $budget"
    echo "Total biaya pembelian             : Rp $procurementCostTotal"
    echo "Sisa anggaran                     : Rp $budgetRemaining"
    echo "---------------------------------------------------------------"

    if [ $budgetRemaining -lt 0 ]; then
        echo "Biaya pembelian melebihi anggaran sebanyak ${budgetRemaining#-}"
    else
        echo "Biaya pembelian dicukupi oleh anggaran"
    fi
}

workstationProcurement