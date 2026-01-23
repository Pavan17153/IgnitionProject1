# Step 1: Define Designer folder (source) and Git folder (destination)
$source = "C:\Program Files\Inductive Automation\Ignition\data\projects\MyProject"
$dest = "C:\Users\Admin\Documents\IgnitionProject"

# Step 2: Copy updated files to Git folder
Copy-Item $source\* $dest -Recurse -Force

# Step 3: Go to Git folder and push to GitHub
cd $dest
git add .
git commit -m "Auto push from Ignition"
git push
