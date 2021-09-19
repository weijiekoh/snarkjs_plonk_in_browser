include "../node_modules/circomlib/circuits/poseidon.circom";

template Hasher(numHashers, numInputs) {
    signal private input in[numInputs];

    component hasher[numHashers];

    for (var i = 0; i < numHashers; i ++) {
        hasher[i] = Poseidon(numInputs);
        for (var j = 0; j < numInputs; j ++) {
            hasher[i].inputs[j] <== in[j];
        }
    }
}
