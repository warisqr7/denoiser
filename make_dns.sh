dns=/mnt/data2/waris/Datasets/DNS-Challenge
noisy=/mnt/data2/waris/Datasets/DNS-Challenge/noisy
clean=/mnt/data2/waris/Datasets/DNS-Challenge/clean
testset=$dns/datasets/test_set
mkdir -p egs/dns/tr
python -m denoiser.audio $noisy > egs/dns/tr/noisy.json
python -m denoiser.audio $clean > egs/dns/tr/clean.json

mkdir -p egs/dns/tt
python -m denoiser.audio $testset/synthetic/no_reverb/noisy $testset/synthetic/with_reverb/noisy > egs/dns/tt/noisy.json
python -m denoiser.audio $testset/synthetic/no_reverb/clean $testset/synthetic/with_reverb/clean > egs/dns/tt/clean.json