#!/bin/sh
TEMP=`getopt --options ih --longoptions images,help -- "$@"`
eval set -- "$TEMP"

PLAYBOOK=''
_IMAGES=0
_CONFIG=0
_HELP=1
while true ; do
    case "$1" in
        -i| --images)
            _IMAGES=1 ; _HELP=0 ; shift 1 ;;
	    -h| --help) shift 1 ;;
        --) shift ; break ;;
	*) echo "Unknown option $1 ignored" ; shift 1;;
    esac
done
if [ _HELP ]; then
    echo "Usage:"
    echo "   nesi-capi-images.sh [options]"
    echo "   -i|--images                   : build nesi capi images"
    echo "   -h|--help                     : display this message"
fi

echo "Images         : ${_IMAGES}"

if [ $_IMAGES -eq 1 ]; then
  echo "ansible-playbook ./nesi-capi-images.yml -i etc/inventory -e @etc/nesi_akl1-capi-images.yml"
  ansible-playbook ./nesi-capi-images.yml -i etc/inventory -e @etc/nesi_akl1-capi-images.yml
fi


#ansible-playbook ./nesi-capi-images.yml -i etc/inventory -e @etc/nesi_akl1-capi-images.yml