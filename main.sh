echo "** Use relative path..."
./whatdir.sh

echo "** Use absolute path..."
/home/runner/script-dir/whatdir.sh

echo "** Use HOME..."
$HOME/script-dir/whatdir.sh

echo "** Change dir and relative path..."
pushd .
cd /tmp && ../home/runner/script-dir/whatdir.sh
popd

if [[ ! -L "./whatdirlink.sh" ]]; then
  ln -s ./whatdir.sh whatdirlink.sh
fi
echo "** Use symlink..."
./whatdirlink.sh

echo "** Use bash..."
bash ./whatdir.sh

echo "** Use bash -c..."
bash -c "./whatdir.sh"

pushd .
echo "** Use source..."
cd /tmp && source ~/script-dir/whatdir.sh
echo "** Use source (.) on symlink..."
. ~/script-dir/whatdirlink.sh
popd
