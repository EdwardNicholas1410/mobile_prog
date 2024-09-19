# assignment 12
# studi kasus 8
# make a script to calculate budget for school trip
# variables: studentAmount, transportCost, ticketCost, foodCost, budget, transportCostTotal, ticketCostTotal, foodCostTotal, tripCostTotal, budgetRemaining
function schoolTripCalculator() {
    echo "Jumlah murid yang ikut: "
    read studentAmount

    echo "Biaya transportasi per murid (IDR/Rp): "
    read transportCost
    
    echo "Biaya tiket masuk per murid (IDR/Rp): "
    read ticketCost

    echo "Biaya konsumsi per murid (IDR/Rp): "
    read foodCost

    echo "Anggaran perjalanan yang tersedia (IDR/Rp): "
    read budget

    transportCostTotal=$((studentAmount * transportCost))
    ticketCostTotal=$((studentAmount * ticketCost))
    foodCostTotal=$((studentAmount * foodCost))

    tripCostTotal=$((transportCostTotal + ticketCostTotal + foodCostTotal))
    budgetRemaining=$((budget - tripCostTotal))

    echo "-------------------------------------------------"
    echo "Jumlah murid ikut                         : Rp $studentAmount"
    echo "Biaya total transportasi per murid        : Rp $transportCostTotal"
    echo "Biaya total tiket masuk per murid         : Rp $ticketCostTotal"
    echo "Biaya total konsumsi per murid            : Rp $foodCostTotal"
    echo "-------------------------------------------------"
    echo "Anggaran perjalanan wisata                : Rp $budget"
    echo "Total biaya perjalanan wisata             : Rp $tripCostTotal"
    echo "Sisa anggaran                             : Rp $budgetRemaining"
    echo "-------------------------------------------------"

    if [ $budgetRemaining -lt 0 ]; then
        echo "Biaya perjalanan melebihi anggaran sebanyak ${budgetRemaining#-}"
    else
        echo "Biaya perjalanan dicukupi oleh anggaran"
    fi
}

schoolTripCalculator