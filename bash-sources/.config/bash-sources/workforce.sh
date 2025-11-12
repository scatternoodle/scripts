# Update to wherever you're installing admin clients
export WFS_ADMIN_CLIENTS_ROOT="$HOME/wfs/admin-clients"

# A little helper to fuzzy-find and launch from installed admin clients
# Note: though disown is used, you'll continue to get lots of vomit to stdout from
# the admin client.
function wfa() { find "$WFS_ADMIN_CLIENTS_ROOT" -type f |
	fzf --prompt="Select admin client >" |
	xargs -I {} bash -c 'javaws "{}" & disown'
}
