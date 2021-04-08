# Travis County Transmission and Distribution Co-simulation

![Image description](https://github.com/diwalli/Travis-County-Co-Simulation/blob/master/Travis.png)

# Project Details 
The purpose of this project is to combine the distribution and transmission systems for the Austin area and simulate them simultaneously for a more complete and realistic synthetic system for use in research. After downloading this repository, follow the steps outlined here to run the co-simulation yourself.

# Helics-PowerWorld-Interface

**Programs Needed**
- [PowerWorld](https://www.powerworld.com/download-purchase/demo-software) 
- [OpenDSS](https://sourceforge.net/projects/electricdss/)
- [Miniconda3](https://docs.conda.io/en/latest/miniconda.html)

**Install**
* Install HELICS using Miniconda: Open Anaconda Prompt window and Type the following

```
conda install -c gmlc-tdc helics
```
![Image description](https://github.com/diwalli/Travis-County-Co-Simulation/blob/master/helics_download.PNG)

- Install HELICS-cli: Open Anaconda Prompt window and Type the following

```
pip install git+git://github.com/GMLC-TDC/helics-cli.git@master
```
![Image description](https://github.com/diwalli/Travis-County-Co-Simulation/blob/master/helics_cli_download.PNG)

- Install esa (Python Simauto Package)

```
pip install esa
```
![Image description](https://github.com/diwalli/Travis-County-Co-Simulation/blob/master/esa_download.PNG)

- Install opendssdirect (Python OpenDSS Package)

```
pip install OpenDSSDirect.py
```
![Image description](https://github.com/diwalli/Travis-County-Co-Simulation/blob/master/direct_download.PNG)


### Running the Travis County Co-Simulation

- **Download the zip file from: https://drive.google.com/open?id=1La8bUheTmExiRHaLgVLynPsfc7URS4AA** 
- **Unzip the compressed folder:"t_and_d_20190514.zip" and deposit it in the distribution_system folder**
- **Change the directory in the Anaconda Prompt to the project location**
- **Use the Helics run command to run the proogram**
```
cd Travis-County-Co-Simulation 
helics run --path run.json --broker-loglevel=7
```
![Image description](https://github.com/diwalli/Travis-County-Co-Simulation/blob/master/change_directory.PNG)

### A window will pop up prompting you to pick which Transmission System you want to use. Type the file name of the transmission system you want to use into the window and press ok (all tranmission files should be in the transmission folder
![Image description](https://github.com/diwalli/Travis-County-Co-Simulation/blob/master/transmission_location.PNG)
![Image description](https://github.com/diwalli/Travis-County-Co-Simulation/blob/master/find_powerworld_file.PNG)

At the completion of the run, you can chek that the run was successful by:
- Checking the output text files
![Image description](https://github.com/diwalli/Travis-County-Co-Simulation/blob/master/output_files.PNG)
![Image description](https://github.com/diwalli/Travis-County-Co-Simulation/blob/master/internal_output_file.PNG)
- Checking the PowerWorld file
- Checking the OpenDSS files

```

### Troubleshooting

On a Mac/Linux operating system, you'll need to run the following in each terminal.

```
export PYTHONPATH=/path/to/github/HELICS-PowerWorld-Interface:$PYTHONPATH
```

If you want the effect to persist across restarts, you’ll need to add the above to your `.bashrc` file.

On Windows, you'll need to do the following:


```
set PYTHONPATH="%PYTHONPATH%;c:\path\to\github\HELICS-PowerWorld-Interface"
```

If you want the effect to persist across restarts, you’ll need to add the path `c:\path\to\github\HELICS-PowerWorld-Interface` to your PYTHONPATH environment variables. A search engine will illustrate the steps for that.
