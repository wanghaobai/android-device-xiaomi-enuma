#!/system/bin/sh
# automatically set device props for unified tree shared-hardware models/variants


load_xipad5pro()
{
    resetprop "ro.display.series" "Xiao Mi PAD Pro5G"
   
    resetprop "ro.product.model" "Xiao Mi PAD Pro5G"
   
    
    resetprop "ro.product.odm.model" "Xiao Mi PAD Pro5G"
   
 
    resetprop "ro.product.product.model" "Xiao Mi PAD Pro5G"
   
    
    resetprop "ro.product.system.model" "Xiao Mi PAD Pro5G"
   
    
    resetprop "ro.product.system_ext.model" "Xiao Mi PAD Pro5G"
  
    resetprop "ro.product.vendor.model" "Xiao Mi PAD Pro5G"
  
}

project=$(getprop ro.boot.project_codename)
echo "Running unified/variant script with $project..." >> /tmp/recovery.log

case $project in
    lemonadep*)
        load_xipad5pro
        ;;
    *)
       

exit 0


