# Plonk proof generation in the browser with snarkjs

This is a demonstration of Plonk proof generation in the browser using
[`snarkjs`](https://github.com/iden3/snarkjs/). It uses a circuit with 426 R1CS
constraints and 0 public inputs.

## Demo

First, clone this repository and install dependencies:

```bash
git clone https://github.com/weijiekoh/snarkjs_plonk_in_browser.git && \
cd snarkjs_plonk_in_browser && \
npm i
```

Next, compile the test circuit, download the right `.ptau` file, generate the
`.zkey` file, and export the verification key:

```bash
./setup.sh
```

Run a local HTTP server:

```bash
npx http-server
```

Open [http://localhost:8080](http://localhost:8080). Click on the "Create
proof" button.

## Benchmarks

| R1CS Constraints | Proving time (s) |
| - | - |
| 426 | 3.3 |
| 2982 | 21.1 |
