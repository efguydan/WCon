## wCon

wCon, which is short for Wireless Connect, is a bash script that can be used to connect an android device wirelessly to a mac.

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
You are done with setup. Whenever you want to connect your device to your mac, connect with a cable and run the command:

```bash
./wcon.sh
```