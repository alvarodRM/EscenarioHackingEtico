import subprocess

subprocess.run(["vagrant", "destroy", "-f", "vm1"])
subprocess.run(["vagrant", "destroy", "-f", "vm2"])
subprocess.run(["vagrant", "destroy", "-f", "vm3"])
subprocess.run(["vagrant", "destroy", "-f", "vm4"])
subprocess.run(["vagrant", "destroy", "-f", "vm5"])