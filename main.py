import getpass
username = str(getpass.getuser())
root_path = "/home/" + username + "/"
with open(root_path + ".bashrc", "a+") as file:
    file.write("\n\n")
    file.write('export ANDROID_HOME="' + root_path + 'Android/Sdk" \nexport PATH="$PATH:' + root_path + 'flutter/bin:$ANDROID_HOME:$ANDROID_HOME:/platform-tools"\n\n')

print("#" * 10, "Setup Completed", "#" * 10)
print("Happy Programming!\n\n")
