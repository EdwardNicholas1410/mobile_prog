# assignment 8
# studi kasus 4
# make a script to calculate budgeting for show
# variables: placeCost, artistCost, technicalCost, otherCost, budget, eventCostTotal, budgetRemaining
function showBudget() {
    echo "Biaya sewa tempat (IDR/Rupiah): " # input placeCost
    read placeCost

    echo "Biaya artis dan penampilan (IDR/Rupiah): " # input artistCost
    read artistCost

    echo "Biaya teknis dan peralatan (IDR/Rupiah): " # input technicalCost
    read technicalCost

    echo "Biaya promosi dan biaya lainnya (IDR/Rupiah): " # input otherCost
    read otherCost

    echo "Anggaran pertunjukan tersedia (IDR/Rupiah): " # input budget
    read budget

    eventCostTotal=$((placeCost + artistCost + technicalCost + otherCost)) # calc total cost
    budgetRemaining=$((budget - eventCostTotal))

    # display result
    echo "----------------------------------------------" # line divider
    echo "Biaya sewa tempat             : Rp $placeCost"
    echo "Biaya artis dan penampilan    : Rp $artistCost"
    echo "Biaya teknis dan peralatan    : Rp $technicalCost"
    echo "Biaya promosi dan lainnya     : Rp $otherCost"
    echo "----------------------------------------------"
    echo "Anggaran pertunjukan          : Rp $budget"
    echo "Total biaya pertunjukan       : Rp $eventCostTotal"
    echo "Sisa anggaran                 : Rp $budgetRemaining"
    echo "----------------------------------------------"

    # display message for if budget is less than eventCostTotal
    if [ $budgetRemaining -lt 0 ]; then
        echo "Biaya pengadaan melebihi anggaran sebanyak ${budgetRemaining#-}" # if budgetRemaining less than 0
    else
        echo "Biaya pengadaan dicukupi oleh anggaran"
    fi
}

showBudget