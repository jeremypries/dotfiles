SID=1
WORKSPACES=$(/Applications/FlashSpace.app/Contents/Resources/flashspace list-workspaces)

for workspace in $WORKSPACES; do
    sketchybar --add item flashspace.$SID left \
        --subscribe flashspace.$SID flashspace_workspace_change \
        --set flashspace.$SID \
        background.color=0xa024273a \
        background.corner_radius=7 \
        background.border_color="$WHITE" \
        background.border_width=2 \
        label.padding_left=12 \
        label.padding_right=5 \
        label="$workspace" \
        label.color="$WHITE" \
        label.width=40 \
        script="$CONFIG_DIR/flashspace.sh $workspace"

    SID=$((SID + 1))
done
