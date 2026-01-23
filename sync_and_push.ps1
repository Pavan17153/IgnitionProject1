# ===============================
# Sync Ignition project + Push Git
# ===============================

$source = "C:\Program Files\Inductive Automation\Ignition\data\projects\MyProject"
$dest   = "C:\Users\Admin\Documents\IgnitionProject"

# Copy files from Ignition project folder
Copy-Item "$source\*" "$dest" -Recurse -Force -ErrorAction SilentlyContinue

# Git push
cd $dest
git add .
git commit -m "Auto push from Ignition"
git push
