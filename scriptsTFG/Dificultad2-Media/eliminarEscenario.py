import subprocess

subprocess.run(["vagrant", "destroy", "-f", "vm1"])
subprocess.run(["vagrant", "destroy", "-f", "vm2"])
subprocess.run(["vagrant", "destroy", "-f", "vm3"])
subprocess.run(["vagrant", "destroy", "-f", "vm4"])
subprocess.run(["vagrant", "destroy", "-f", "vm5"])

subprocess.run(["vagrant", "destroy", "-f", "vm6"])
subprocess.run(["vagrant", "destroy", "-f", "vm7"])
subprocess.run(["vagrant", "destroy", "-f", "vm8"])
subprocess.run(["vagrant", "destroy", "-f", "vm9"])