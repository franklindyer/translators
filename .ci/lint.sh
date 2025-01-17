#!/usr/bin/env bash
set -euo pipefail

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

. "$dir/helper.sh"

get_translators_to_check
if [ -n "$TRANSLATORS_TO_CHECK" ]; then
	npm run lint -- "$TRANSLATORS_TO_CHECK"
fi
