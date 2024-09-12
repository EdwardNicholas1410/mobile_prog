# assignment 5
# (English)
# make a system to calculate the costs of a project and confirm if the budget for it is enough
# variable considerations:
# developers amount, monthly developer wage, development time, monthly server cost, 
# software licensing cost, other operational costs
# (Indonesian)
# buat sistem untuk menghitung biaya projek dan konfirmasi anggaran untuk itu cukup
# bahan pertimbangan: 
# jumlah pengembang, gaji per bulan pengembang, lama pengembangan, biaya server per bulan, 
# biaya lisensi software, biaya operasional lainnya

function  projectBudgeting(){
    # English: input developer amount
    # Indonesian: masukkan jumlah pengembang
    echo "Jumlah pengembang dalam proyek:" # displays message asking for developer amounts/menampilkan pesan meminta jumlah developer
    read devAmount # reads the input and saves it in devAmount/baca input dan simpan di devAmount

    # English: input monthly developer wage
    # Indonesian: masukkan gaji per bulan pengembang
    echo "Gaji pengembang setiap bulan (IDR/Rupiah):" # displays message asking for developer wage/menampilkan pesan meminta gaji developer
    read devMonthlyWage # reads the input and saves it in devMonthlyWage/baca input dan simpan di devMonthlyWage

    # English: input development time
    # Indonesian: masukkan lama pengembangan
    echo "Lama pengembangan proyek (bulan):" # displays message asking project duration/menampilkan pesan meminta lama pengembangan projek
    read projectDuration # reads the input and saves it in projectDuration/baca input dan simpan di projectDuration

    # English: English: input monthly server cost
    # Indonesian: masukkan biaya server per bulan
    echo "Biaya penyewaan server setiap bulan (IDR/Rupiah):" # displays message asking for server monthly cost/menampilkan pesan meminta biaya sewa server setiap bulan
    read serverMonthlyCost # reads the input and saves it in serverMonthlyCost/baca input dan simpan di serverMonthlyCost

    # English: input software licensing costs
    # Indonesian: masukkan biaya lisensi software
    echo "Biaya lisensi software (IDR/Rupiah):" # displays message asking for license cost/menampilkan pesan meminta biaya lisensi
    read licenseCost # reads the input and saves it in licenseCost/baca input dan simpan di licenseCost

    # English: input other operational costs
    # Indonesian: masukkan biaya operasional lainnya
    echo "Biaya operasional lainnya (IDR/Rupiah):" # displays message asking for other operational costs/menampilkan pesan meminta biaya operasional lainnya
    read otherCosts # reads the input and saves it in otherCosts/baca input dan simpan di otherCosts

    # English: input project budget
    # Indonesian: masukkan anggaran projek
    echo "Anggaran projek (IDR/Rupiah):" # displays message asking for budget/menampilkan pesan meminta anggaran
    read budget # reads the input and saves it in budget/baca input dan simpan di budget

    # (English)
    # calculate developer related costs
    # multiply monthly wage by developer amount and project duration
    # store in totalDevCosts
    # (Indonesian)
    # hitung biaya berhubungan dengan developer
    # kalikan gaji per bulan dengan jumlah developer dan lama pengembangan
    # simpan di totalDevCosts
    totalDevCosts=$((devAmount * devMonthlyWage * projectDuration))

    # (English)
    # calculate server cost
    # multiply monthly server cost and project duration
    # store in totalServerCosts
    # (Indonesian)
    # hitung biaya server
    # kalikan biaya server per bulan dengan lama pengembangan
    # simpan di totalServerCosts
    totalServerCosts=$((serverMonthlyCost * projectDuration))

    # (English)
    # calculate total costs
    # add developer costs with server costs and license cost and other operational costs
    # store in totalProjectCost
    # (Indonesian)
    # hitung total biaya
    # tambahkan biaya developer, biaya server, biaya lisensi, dan biaya operasional
    # simpan di totalProjectCost
    totalProjectCost=$((totalDevCosts + totalServerCosts + licenseCost + otherCosts))

    # (English)
    # calculate remaining budget
    # subtract budget with totalProjectCost
    # store in budgetRemaining
    # (Indonesian)
    # hitung budget tersisa
    # kurangi budget dengan totalProjectCost
    # simpan di budgetRemaining
    budgetRemaining=$((budget - totalProjectCost))

    # English: display calculation result
    # Indonesian: tampilkan hasil perhitungan
    echo "-------------------------------------------------" # displays line divider/menampilkan garis pemisah
    echo "Total biaya pengembang            : Rp $totalDevCosts" # displays total dev costs/menampilkan total biaya developer
    echo "Total biaya server                : Rp $totalServerCosts" # displays total server costs/menampilkan total biaya server
    echo "Total biaya lisensi software      : Rp $licenseCost" # displays software license cost/menampilkan biaya lisensi software
    echo "Total biaya operasional lain      : Rp $otherCosts" # displays other operational costs/menampilkan biaya operasional lainnya
    echo "-------------------------------------------------" # displays line divider/menampilkan garis pemisah
    echo "Total biaya projek                : Rp $totalProjectCost" # displays total project costs/menampilkan total biaya projek
    echo "Sisa anggaran                     : Rp $budgetRemaining" # displays remaining budget/menampilkan sisa anggaran
    echo "-------------------------------------------------" # displays line divider/menampilkan garis pemisah

    # English: check if the cost exceeds budget
    # Indonesian: mengecek jika biaya melebihi anggaran
    if [ $budgetRemaining -lt 0 ]; then #-lt is 'less than'/-lt berarti 'kurang dari'
        # (English)
        # code is executed if condition is true, so if the remaining budget is less than 0
        # it outputs the budget still needed to cover the cost
        # (Indonesian)
        # kode di eksekusi jika kondisi hasilnya true, jadi jika sisa anggaran kurang dari 0
        # ini menghasilkan jumlah anggaran yang diperlukan untuk menutup biaya
        echo "Proyek melebihi anggaran sebanyak ${budgetRemaining#-}"
        # ${budgetRemaining#-} is to delete the - if the value is negative/${budgetRemaining#-} untuk menghapus tanda - dari nilai negatif
    else
        # (English)
        # code is executed if condition is false, so if the remaining budget is equal or greater than 0
        # it outputs that the cost is still within budget
        # (Indonesian)
        # kode di eksekusi jika kondisi hasilnya false
        # ini menghasilkan bahwa biaya masih didalam anggaran
        echo "Proyek masih di dalam anggaran"
    fi
}

# English: call the function projectBudgeting
# Indonesian: panggil fungsi projectBudgeting
projectBudgeting
