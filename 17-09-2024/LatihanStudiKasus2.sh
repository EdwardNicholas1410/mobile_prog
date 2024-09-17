# assignment 6
# studi kasus 2
# make a script to calculate the cost of constructing a school building and compare with budget
# variables: classroomAmount, workerAmount, workerWageDaily, constructionPeriod, materialCost, architectCost, otherCost, budget, workerWageTotal, projectCostTotal, remainingBudget
function schoolBuildingConstruction(){
    echo "Jumlah ruang kelas dalam bangunan (tidak mempengaruhi biaya): " # input value for classroomAmount
    read classroomAmount # store in classroomAmount

    echo "Jumlah pekerja: " # input value for workerAmount
    read workerAmount # store in workerAmount

    echo "Gaji pekerja dalam sehari (IDR/Rupiah): " # input value for workerWageDaily
    read workerWageDaily # store in workerWageDaily

    echo "Estimasi pekerjaan konstruksi bangunan (Hari): " # input value for constructionPeriod
    read constructionPeriod # store in constructionPeriod

    echo "Harga material/bahan konstruksi (IDR/Rupiah): " # input value for materialCost
    read materialCost # store in materialCost

    echo "Harga jasa desain arsitek (IDR/Rupiah): " # input value for architectCost
    read architectCost # store in architectCost

    echo "Biaya izin dan biaya operasional lainnya (IDR/Rupiah): " # input value for otherCost
    read otherCost # store in otherCost

    echo "Anggaran pembangunan tersedia (IDR/Rupiah): " # input value for budget
    read budget # store in budget

    # calculate worker related costs then store in workerWageTotal
    workerWageTotal=$((workerAmount * workerWageDaily * constructionPeriod))

    # calculate total project costs then store in projectCostTotal
    projectCostTotal=$((workerWageTotal + materialCost + architectCost + otherCost))

    # calculate remaining budget then store in budgetRemaining
    budgetRemaining=$((budget - projectCostTotal))

    # display results, make it fancy
    echo "-------------------------------------------------" # line divider
    echo "Jumlah ruang kelas                : $classroomAmount kelas"
    echo "-------------------------------------------------"
    echo "Biaya pekerja                     : Rp $workerWageTotal"
    echo "Biaya material                    : Rp $materialCost"
    echo "Biaya jasa arsitek                : Rp $architectCost"
    echo "Biaya izin dan operasional lain   : Rp $otherCost"
    echo "-------------------------------------------------"
    echo "Anggaran proyek pembangunan       : Rp $budget"
    echo "Total biaya proyek pembangunan    : Rp $projectCostTotal"
    echo "Sisa anggaran                     : Rp $budgetRemaining"
    echo "-------------------------------------------------"

    # display additional message for if budget 
    if [ $budgetRemaining -lt 0 ]; then
        echo "Biaya proyek melebihi anggaran sebanyak ${budgetRemaining#-}" # if budgetRemaining less than 0
    else
        echo "Biaya proyek dicukupi oleh anggaran"
    fi
}

schoolBuildingConstruction