echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="bionic packages/apps/Settings system/core"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/device/ulefone/metal/patches/$dir/*.patch
	echo " "
done

cd $rootdirectory
cd packages/apps/SetupWizard
git reset 4161a57cccad5bd0078693fd4b3dee568fa388d1 --hard

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
