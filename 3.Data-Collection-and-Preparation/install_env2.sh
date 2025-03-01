sudo apt install -y python3-pip python3-venv

python3 -m venv kafka_env

source kafka_env/bin/activate

Now why we need virtualenv:

So in python, when we write the code, we would need to install a lot of different packages.
Of course, all of these packages will be installed on our operating system.
But in the future when we install another version of that package, it could create conflict between the existing package.

To avoid this what python has provided is also a package called as virtual environment.


pip3 install kafka-python

