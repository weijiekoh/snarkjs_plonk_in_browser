#!/bin/bash

rm -f ./zkeys/Hasher*
rm -f ./zkeys/verification_key.json

npx zkey-manager compile -c ./zkeys.config.yml

npx snarkjs r1cs info ./zkeys/Hasher_2-1.test.r1cs

wget -O ./zkeys/powersOfTau28_hez_final_12.ptau https://hermezptau.blob.core.windows.net/ptau/powersOfTau28_hez_final_12.ptau

npx snarkjs plonk setup ./zkeys/Hasher_2-1.test.r1cs ./zkeys/powersOfTau28_hez_final_12.ptau ./zkeys/Hasher_2-1.test.zkey

npx snarkjs zkey export verificationkey ./zkeys/Hasher_2-1.test.zkey zkeys/verification_key.json
