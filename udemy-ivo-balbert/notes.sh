# to install Julia

cd ~
wget https://julialang-s3.julialang.org/bin/linux/x64/1.9/julia-1.9.0-linux-x86_64.tar.gz
tar zxvf julia-1.9.0-linux-x86_64.tar.gz
rm julia-1.9.0-linux-x86_64.tar.gz
echo "export PATH=$PATH:~/julia-1.9.0/bin" >> ~/.bashrc
source ~/.bashrc
julia --version

# ------------------------------------------------------------------------------
