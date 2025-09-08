# GEO 421: A Practical Guide to Atomistic Modeling  
**Lecture 3 Repository**

**Instructor:** Prof. Jie Deng  
**Guest Speaker & Repository Author:** Yihang Peng

## Pre-Class Instructions (Optional but Recommended)

If you have time before Tuesday’s class, please follow the steps below to set up the environment and install the software:

### 1. Log into MyAdroit Web Portal
Open [MyAdroit Portal](https://myadroit.princeton.edu), then navigate to:

> `Clusters` → `Adroit Cluster Shell Access`

This will launch a terminal session connected to Adroit.

---

### 2. Clone the Lecture 3 Repository

In the terminal, run the following commands **after replacing** `<your_netid>` with your **Princeton NetID**:

```bash
cd /scratch/network/<your_netid>/
git clone https://github.com/pyhope/GEO419_Lec3.git
```

---

### 3. Update VASP Install Script

Go to the file browser under the **Files** tab in the MyAdroit portal.  
Find:

> `GEO419_Lec3/software/vasp_install.sh`

Then edit **line 8** to replace:

```bash
/path/to/your/vasp.6.3.2.zip
```

with the **absolute path** to the VASP zip file you uploaded to Adroit (available from the course Canvas under Files). Remember the path should point to the file on Adroit, not on your local computer.

---

### 4. Run Installation Scripts

Back in the shell, navigate to the software folder and run the following commands:

```bash
cd /scratch/network/<your_netid>/GEO419_Lec3/software
bash deepmd_install.sh
bash vasp_install.sh
```

This process may take a few minutes — be patient and allow each script to complete.

---

## Notes

- Installing **VASP** and **LAMMPS+DeePMD-kit** before class can save valuable time.
- Don’t worry if you don’t get through everything — the full workflow will be demonstrated during Lecture 3.
- For any issues or questions, feel free to contact Yihang via email yhpeng@princeton.edu or bring your questions to class.

---

Happy modeling!
