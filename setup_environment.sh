# this script sets up an anaconda setup_environment
# for network analysis using a few python analyis


# download anaconda
#(update link with newest version from anaconda.com/distribution)
cd /tmp
curl -O https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh

# execute
bash Anaconda3-2019.10-Linux-x86_64.sh
# agree to licencse and accept default location
# agree to prepend conda to PATH

#activate installation
source ~/.bashrc

# set up and activate new python 3.6 anaconda environment
conda create --name network_manila python=3.6
conda activate network_manila

#change to project folder
cd /home/op/network_manila

conda install jupyter notebook

conda install -c conda-forge rtree geopandas rasterio geojson
conda install -c conda-forge gdal
pip install geopy
pip install boltons
pip install pulp

git clone https://github.com/worldbank/GOSTnets.git
python setup.py build
python setup.py install

#further envs?
