#!/bin/bash

if [ "$#" -eq 1 ]; then
  export POD_VERSION=$1
  export GIT_TAG_NAME=$1
elif [ "$#" -eq 2 ]; then
  export POD_VERSION=$1
  export GIT_TAG_NAME=$2
else
  echo "Usage: $0 <podspec-version> [<git-tag-name>]"
  echo "    If 'git-tag-name' is not specified, the 'git-tag-name' will be the same as 'podspec-version'!"
  exit 1
fi

export POD_VERSION=$1
export PODSPEC_FILE="travis-test.podspec"

echo -n "" > $PODSPEC_FILE

echo "Pod::Spec.new do |spec|" >> $PODSPEC_FILE
echo "  spec.name                 = 'travis-test'" >> $PODSPEC_FILE
echo "  spec.version              = '$POD_VERSION'" >> $PODSPEC_FILE
echo "  spec.homepage             = 'https://github.com/kovacsi/testrepo.git'" >> $PODSPEC_FILE
echo "  spec.license              = { :type => 'EPL', :file => 'LICENSE.txt' }" >> $PODSPEC_FILE
echo "  spec.author               = { 'Migeran' => 'support@migeran.com' }" >> $PODSPEC_FILE
echo "  spec.summary              = 'Simple cocoapods test'" >> $PODSPEC_FILE
echo "  spec.platform             = :ios, '8.4'" >> $PODSPEC_FILE
echo "  spec.source               = { :git => 'https://github.com/kovacsi/testrepo.git', :tag => '$GIT_TAG_NAME' }" >> $PODSPEC_FILE
echo "  spec.vendored_frameworks  = 'TestSDK.framework'" >> $PODSPEC_FILE
echo "  spec.requires_arc         = true" >> $PODSPEC_FILE
echo "end" >> $PODSPEC_FILE
