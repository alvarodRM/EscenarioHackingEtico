import subprocess

subprocess.run(["vagrant", "up", "vm1", "vm2", "vm3", "vm4", "vm5"])
subprocess.run(["vagrant", "halt", "vm1", "vm2", "vm3", "vm4", "vm5"])

