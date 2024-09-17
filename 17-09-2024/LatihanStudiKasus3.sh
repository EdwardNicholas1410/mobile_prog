# assignment 7
# studi kasus 3
# make a script to calculate the cost of procuring new tools for hospital and compare with budget
# variables: toolAmount, toolPriceUnit, toolInstallUnit, trainingCost, maintenanceCost, budget, toolCostTotal, procurementCostTotal, budgetRemaining
function procurementToolCost() {
    echo "Jumlah alat yang dipasang: " # input toolAmount
    read toolAmount

    echo "Harga alat setiap unit (IDR/Rupiah): " # input toolPriceUnit
    read toolPriceUnit

    echo "Harga install alat setiap unit (IDR/Rupiah): " # input toolInstallUnit
    read toolInstallUnit

    echo "Biaya pelatihan staf (keseluruhan, IDR/Rupiah): " # input trainingCost
    read trainingCost

    echo "Biaya perawatan dan pemeliharaan tahun pertama (IDR/Rupiah): " # input maintenanceCost
    read maintenanceCost

    echo "Anggaran pengadaan tersedia (IDR/Rupiah): " # input budget
    read budget

    # calculate total price for tools, store in toolCostTotal
    toolCostTotal=$((toolAmount * (toolPriceUnit + toolInstallUnit)))

    # calculate total procurement cost
    procurementCostTotal=$((toolCostTotal + trainingCost + maintenanceCost))

    # calculate remaining budget
    budgetRemaining=$((budget - procurementCostTotal))

    # display result
    echo "-------------------------------------------------------------" # line divider
    echo "Biaya pengadaan peralatan                     : Rp $toolCostTotal"
    echo "Biaya pelatihan seluruh staf                  : Rp $trainingCost"
    echo "Biaya perawatan dan pemeliharan tahun pertama : Rp $maintenanceCost"
    echo "-------------------------------------------------------------"
    echo "Anggaran pengadaan peralatan                  : Rp $budget"
    echo "Total biaya pengadaan peralatan               : Rp $procurementCostTotal"
    echo "Sisa anggaran                                 : Rp $budgetRemaining"
    echo "-------------------------------------------------------------"

    # display message for if budget is less than procurementTotalCost
    if [ $budgetRemaining -lt 0 ]; then
        echo "Biaya pengadaan melebihi anggaran sebanyak ${budgetRemaining#-}" # if budgetRemaining less than 0
    else
        echo "Biaya pengadaan dicukupi oleh anggaran"
    fi
}

procurementToolCost