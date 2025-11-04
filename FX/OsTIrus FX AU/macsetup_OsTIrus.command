CURRENT_LOCATION=$(dirname "$0")
cd "$CURRENT_LOCATION"
echo
echo "Clearing extended attributes for OsTIrus"
echo "Location: $CURRENT_LOCATION"
echo
find "$CURRENT_LOCATION" -name 'OsTIrus*' \
    -exec echo "Clearing attributes for: {}" \; \
    -exec xattr -c {} \; \
     2>&2
echo
echo "Done."
