# echo "Siapa nama anda?"
# command to interact with terminal: read
# after read is variable name where the value is stored
# read name
# call variable with $ then variable name
# echo "nama saya adalah $name "


# assignment 1
# create a script that takes the user input to get the perimeter of rectangle (persegi panjang)
# input length (panjang)
# echo "Input panjang persegi panjang"
# read panjang
# input width (lebar)
# echo "Input lebar persegi panjang"
# read lebar
# calculate and save in variable
# keliling=$((2*(panjang+lebar)))
# output result
# echo "Keliling dari persegi panjang dengan panjang $panjang dan lebar $lebar adalah $keliling"


# assignment 2
# create a script to calculate the volume of a cone (kerucut)
# input radius (jari jari)
# echo "Input jari-jari"
# read radius
# input height (tinggi)
# echo "Input tinggi"
# read tinggi
# volume=$(echo "scale=2; (1/3) * 3.14159 * ($radius^2) * $tinggi" | bc)
# echo "Volume kerucut dengan jari jari alas $radius dan tinggi $tinggi adalah $volume


# to make a function just declare the function name without parameters
# function nm_fungsi {}
# to call a function just call the name
# nm_fungsi

# function lokasi(){
#     echo "Dimana tempat tinggal kamu?"
# }
# lokasi

# assignment 3
# create a function that says "Selamat datang", and call it
#
# function sapa{}
#     echo "Selamat datang"
# sapa

# assignment 4
# create a script that in it has a function
# the function is to calculate force
# declare function
function calculate() {
    #calculate for force
    gaya=$((mass*acceleration))
    #output result
    echo "Gaya dari benda yang bermassa $mass dan bergerak secepat $acceleration adalah $gaya N"
}
# input mass (massa)
echo "Apa massa benda?"
read mass
#input acceleration (percepatan)
echo "Apa percepatan benda?"
read acceleration
#call function
calculate