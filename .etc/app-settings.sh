##### Bartender 2 #####

# Bartender has launched before
defaults write com.surteesstudios.Bartender SUHasLaunchedBefore -bool true

# Clicking Bartender will:
# 0: Open Bartender Bar
# 1: Display all items in Menu Bar
# 2: Expand Menu Bar, keep items hidden
# 3: Display Bartender Bar items in menu bar
defaults write com.surteesstudios.Bartender bartenderClick -int 0

# Insert a gap when Notification Center is hdden
defaults write com.surteesstudios.Bartender insertGap -bool false

# Check for Updates Automatically
defaults write com.surteesstudios.Bartender SUAutomaticallyUpdate -bool false

# Bartender menu bar icon:
# Waistcoat, Bartender, Bowtie, Glasses, Star, Box
defaults write com.surteesstudios.Bartender statusBarImageNamed -string "More"

# Add login item
loginitem add "Bartender 2"



##### XScope #####

# Disable Dock icon
defaults write com.artissoftware.mac.xScope generalShowDockIcon 0
defaults write com.artissoftware.xScope generalShowDockIcon 0
