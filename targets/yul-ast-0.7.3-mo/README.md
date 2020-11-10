<div align="left">
  <h2>
    <img src="../../doc/icon.png" width=50>Venti - Verifying Smart Contracts via Yul
  </h2>
</div>

### Versions

- `yul-bmc-multiobs-slim.rkt`: This is for `solidare` with slim displayed returned message.
- `yul-bmc.rkt`: This is authentic Venti client for various usage.

Note that the above two versions use ***different*** configure file formats.

### Quick Commands (for Memory-Optimized Target)

1. Run `solc` to compile the solidity souce code to Yul code (this will generate `*.yul` files):

```bash
solc ./contracts/A1.sol --ir --overwrite -o ./tests/
solc ./contracts/A2.sol --ir --overwrite -o ./tests/
```

2. Parse the Yul code into s-expression in json (this will generate `*.json` files):

```bash
python ./yul_parser.py --yul ./contracts/A1.yul
python ./yul_parser.py --yul ./contracts/A2.yul
```

3. Write a simple json describing the contracts to be checked and the corresponding transactions (and observe functions), see the `configs` folder.

4. Run the equivalence checking script by:

```bash
racket ./yul-bmc-multiobs-slim.rkt --config ./configs/A-multiobs-slim.json
```

or

```bash
racket ./yul-bmc.rkt --config ./configs/A.json
```

5. For full commandline arguments, try:

```bash
racket ./yul-bmc.rkt --config ./configs/A.json --nbits 16 --memsize 20 --ntests 3 --verbose
```

```bash
racket ./yul-bmc-multiobs-slim.rkt --config ./configs/A-multiobs-slim.json --nbits 16 --memsize 20 --ntests 2 --faststop --verbose
```

```bash
racket ./yul-bmc-multiobs-slim.rkt --config ./real-configs/bmc-config-181.json --nbits 16 --memsize 20 --ntests 2 --faststop --verbose
```