# assignment 11
# studi kasus 7
# make a script to calculate budget for parking lot construction
# variables: parkingAmount, parkingCostSlot, pavingAndMarkCost, budget, parkingCostTotal, projectCostTotal, budgetRemaining
function parkingLotConstruction() {
    echo "Jumlah kendaraan yang akan ditampung: "
    read parkingAmount

    echo "Biaya setiap slot parkir (IDR/Rp): "
    read parkingSlotCost

    echo "Biaya paving dan marka jalan tempat parkir (IDR/Rp): "
    read pavingAndMarkCost

    echo "Anggaran proyek yang tersedia (IDR/Rp): "
    read budget

    parkingCostTotal=$((parkingAmount * parkingSlotCost))
    projectCostTotal=$((parkingCostTotal + pavingAndMarkCost))
    budgetRemaining=$((budget - projectCostTotal))

    echo "-------------------------------------------------"
    echo "Jumlah kendaraan ditampung        : Rp $parkingAmount"
    echo "Biaya setiap slot parkir          : Rp $parkingSlotCost"
    echo "Biaya paving dan marka jalan      : Rp $pavingAndMarkCost"
    echo "-------------------------------------------------"
    echo "Anggaran proyek pembangunan       : Rp $budget"
    echo "Total biaya proyek pembangunan    : Rp $projectCostTotal"
    echo "Sisa anggaran                     : Rp $budgetRemaining"
    echo "-------------------------------------------------"

    if [ $budgetRemaining -lt 0 ]; then
        echo "Biaya proyek melebihi anggaran sebanyak ${budgetRemaining#-}"
    else
        echo "Biaya proyek dicukupi oleh anggaran"
    fi
}

parkingLotConstruction