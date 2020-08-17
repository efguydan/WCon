## wCon

wCon, which is short for Wireless Connect, is a bash script that can be used to connect an android device wirelessly to a mac.

<p align="center">
  <img width="350" src="https://raw.githubusercontent.com/efguydan/WCon/master/showcase/screenshot.png">
</p>

## Setup
### Step 1: 
Open your terminal, navigate to the root folder of your android project and run the command

```bash
curl -L -O https://raw.githubusercontent.com/efguydan/WCon/master/wcon.sh
```

### Step 2: 
Then run

```bash
chmod u+x wcon.sh
```

### Step 3 (and Subsequent Times): 
You are done with setup. Whenever you want to connect your device to your mac, connect with a cable and run command below. You can remove your USB cable afterwards.

```bash
./wcon.sh
```

## Frequently Asked Questions
<details>
  <summary>Do I need a USB cable before I can use this tool?</summary>
  
  Yes, a USB cable will needed to connect your android device to your laptop. Although it can be removed as soon as wCon is done connecting your device.
</details>

<details>
  <summary>Can I access Wcon outside of the folder it is downloaded in?</summary>
  
  No
</details>

<details>
  <summary>Do I need to add Wcon to my .gitignore file?</summary>
  
  No, It isn't necessary to add wCon to the .gitignore file. However, to avoid pushing unnecessary files to your repository, it is advisable.
</details>

## License
```text
Copyright 2020 Efe Ejemudaro

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
