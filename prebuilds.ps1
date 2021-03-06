rmdir -Force -Recurse prebuild

node-gyp clean configure --arch=ia32 build
mkdir -p prebuild\ia32
copy build\release\EventLog.node prebuild\ia32\EventLog.node

node-gyp clean configure --arch=x64 build
mkdir -p prebuild\x64
copy build\release\EventLog.node prebuild\x64\EventLog.node

node-gyp clean