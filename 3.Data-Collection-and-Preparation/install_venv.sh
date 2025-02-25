bharathkumardasaraju@demo-pandas$ python3 -m venv venv
bharathkumardasaraju@demo-pandas$ pwd
/Users/bharathkumardasaraju/external/learn-ml-ops/3.Data-Collection-and-Preparation/demo-pandas
bharathkumardasaraju@demo-pandas$ ls -rtlh
total 16
-rw-r--r--@ 1 bharathkumardasaraju  staff   2.8K Feb 25 02:49 data.csv
-rw-r--r--@ 1 bharathkumardasaraju  staff    11B Feb 25 02:53 sample-pandas.py
drwxr-xr-x@ 7 bharathkumardasaraju  staff   224B Feb 25 02:58 venv
bharathkumardasaraju@demo-pandas$ source venv/bin/activate

(venv) bharathkumardasaraju@demo-pandas$ pip install pandas
Collecting pandas
  Downloading pandas-2.2.3-cp313-cp313-macosx_11_0_arm64.whl.metadata (89 kB)
Collecting numpy>=1.26.0 (from pandas)
  Downloading numpy-2.2.3-cp313-cp313-macosx_14_0_arm64.whl.metadata (62 kB)
Collecting python-dateutil>=2.8.2 (from pandas)
  Using cached python_dateutil-2.9.0.post0-py2.py3-none-any.whl.metadata (8.4 kB)
Collecting pytz>=2020.1 (from pandas)
  Downloading pytz-2025.1-py2.py3-none-any.whl.metadata (22 kB)
Collecting tzdata>=2022.7 (from pandas)
  Downloading tzdata-2025.1-py2.py3-none-any.whl.metadata (1.4 kB)
Collecting six>=1.5 (from python-dateutil>=2.8.2->pandas)
  Downloading six-1.17.0-py2.py3-none-any.whl.metadata (1.7 kB)
Downloading pandas-2.2.3-cp313-cp313-macosx_11_0_arm64.whl (11.3 MB)
   ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 11.3/11.3 MB 13.1 MB/s eta 0:00:00
Downloading numpy-2.2.3-cp313-cp313-macosx_14_0_arm64.whl (5.1 MB)
   ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 5.1/5.1 MB 16.1 MB/s eta 0:00:00
Using cached python_dateutil-2.9.0.post0-py2.py3-none-any.whl (229 kB)
Downloading pytz-2025.1-py2.py3-none-any.whl (507 kB)
Downloading tzdata-2025.1-py2.py3-none-any.whl (346 kB)
Downloading six-1.17.0-py2.py3-none-any.whl (11 kB)
Installing collected packages: pytz, tzdata, six, numpy, python-dateutil, pandas
Successfully installed numpy-2.2.3 pandas-2.2.3 python-dateutil-2.9.0.post0 pytz-2025.1 six-1.17.0 tzdata-2025.1

[notice] A new release of pip is available: 25.0 -> 25.0.1
[notice] To update, run: pip install --upgrade pip
(venv) bharathkumardasaraju@demo-pandas$
