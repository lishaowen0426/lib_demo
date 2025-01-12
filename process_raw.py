import json
import shutil
launch = "/home/swli/rust-isolation/mold/.vscode/launch.json"
launch_cp = "/home/swli/rust-isolation/mold/.vscode/launch.json.cp"

with open("raw", 'r') as file:
    file_content = file.read()
    cmds = file_content.split()
    cmds.insert(0,"--no-fork")
    cmds.insert(0,"--threads=1")

    output = cmds.index("-o") +1
    cmds[output] = "/home/swli/rust-isolation/mold/build/lib_demo"
    

    shutil.copyfile(launch, launch_cp)

    with open(launch,"r+") as fp:
        config = json.loads(fp.read())
        config["configurations"][0]["args"] = cmds
        fp.seek(0)
        fp.truncate()
        json.dump(config, fp)


