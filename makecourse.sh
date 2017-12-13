#!/bin/bash
#
# Creates a course.

PHP=`which php`
I="$RANDOM"
SHORTNAME="M101-$I"
FULLNAME="Moodle Dev $I"
SIZE="S"
CLI="../moodle/admin/tool/generator/cli/maketestcourse.php"

if [ ! -e "$CLI" ]; then
    echo "Cannot create a course: the CLI script to create test courses could not be foun$
    exit 1
fi

$PHP $CLI --shortname="$SHORTNAME" --fullname="$FULLNAME" --size=$SIZE --bypasscheck
