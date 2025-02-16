#!/bin/bash

## Downloads all the shadertoy.com assets (textures, cubemaps, volumes, videos, music)
# https://www.shadertoy.com/media/a/aea6b99da1d53055107966b59ac5444fc8bc7b3ce2d0bbb6a4a3cbae1d97f3aa.bin



mkdir -p textures && pushd textures
cat <<EOF | xargs wget --continue
https://www.shadertoy.com/media/a/52d2a8f514c4fd2d9866587f4d7b2a5bfa1a11a0e772077d7682deb8b3b517e5.jpg
https://www.shadertoy.com/media/a/bd6464771e47eed832c5eb2cd85cdc0bfc697786b903bfd30f890f9d4fc36657.jpg
https://www.shadertoy.com/media/a/8979352a182bde7c3c651ba2b2f4e0615de819585cc37b7175bcefbca15a6683.jpg
https://www.shadertoy.com/media/a/85a6d68622b36995ccb98a89bbb119edf167c914660e4450d313de049320005c.png
https://www.shadertoy.com/media/a/cb49c003b454385aa9975733aff4571c62182ccdda480aaba9a8d250014f00ec.png
https://www.shadertoy.com/media/a/08b42b43ae9d3c0605da11d0eac86618ea888e62cdd9518ee8b9097488b31560.png
https://www.shadertoy.com/media/a/0c7bf5fe9462d5bffbd11126e82908e39be3ce56220d900f633d58fb432e56f5.png
https://www.shadertoy.com/media/a/0a40562379b63dfb89227e6d172f39fdce9022cba76623f1054a2c83d6c0ba5d.png
https://www.shadertoy.com/media/a/fb918796edc3d2221218db0811e240e72e340350008338b0c07a52bd353666a6.jpg
https://www.shadertoy.com/media/a/8de3a3924cb95bd0e95a443fff0326c869f9d4979cd1d5b6e94e2a01f5be53e9.jpg
https://www.shadertoy.com/media/a/cbcbb5a6cfb55c36f8f021fbb0e3f69ac96339a39fa85cd96f2017a2192821b5.png
https://www.shadertoy.com/media/a/cd4c518bc6ef165c39d4405b347b51ba40f8d7a065ab0e8d2e4f422cbc1e8a43.jpg
https://www.shadertoy.com/media/a/92d7758c402f0927011ca8d0a7e40251439fba3a1dac26f5b8b62026323501aa.jpg
https://www.shadertoy.com/media/a/79520a3d3a0f4d3caa440802ef4362e99d54e12b1392973e4ea321840970a88a.jpg
https://www.shadertoy.com/media/a/3871e838723dd6b166e490664eead8ec60aedd6b8d95bc8e2fe3f882f0fd90f0.jpg
https://www.shadertoy.com/media/a/ad56fba948dfba9ae698198c109e71f118a54d209c0ea50d77ea546abad89c57.png
https://www.shadertoy.com/media/a/f735bee5b64ef98879dc618b016ecf7939a5756040c2cde21ccb15e69a6e1cfb.png
https://www.shadertoy.com/media/a/3083c722c0c738cad0f468383167a0d246f91af2bfa373e9c5c094fb8c8413e0.png
https://www.shadertoy.com/media/a/10eb4fe0ac8a7dc348a2cc282ca5df1759ab8bf680117e4047728100969e7b43.jpg
https://www.shadertoy.com/media/a/95b90082f799f48677b4f206d856ad572f1d178c676269eac6347631d4447258.jpg
https://www.shadertoy.com/media/a/e6e5631ce1237ae4c05b3563eda686400a401df4548d0f9fad40ecac1659c46c.jpg
https://www.shadertoy.com/media/a/1f7dca9c22f324751f2a5a59c9b181dfe3b5564a04b724c657732d0bf09c99db.jpg
EOF

popd && mkdir -p cubemaps/{0,1,2,3,4,5}

pushd cubemaps/0
cat <<EOF | xargs wget --continue
https://www.shadertoy.com/media/a/94284d43be78f00eb6b298e6d78656a1b34e2b91b34940d02f1ca8b22310e8a0.png
https://www.shadertoy.com/media/a/94284d43be78f00eb6b298e6d78656a1b34e2b91b34940d02f1ca8b22310e8a0_1.png
https://www.shadertoy.com/media/a/94284d43be78f00eb6b298e6d78656a1b34e2b91b34940d02f1ca8b22310e8a0_2.png
https://www.shadertoy.com/media/a/94284d43be78f00eb6b298e6d78656a1b34e2b91b34940d02f1ca8b22310e8a0_3.png
https://www.shadertoy.com/media/a/94284d43be78f00eb6b298e6d78656a1b34e2b91b34940d02f1ca8b22310e8a0_4.png
https://www.shadertoy.com/media/a/94284d43be78f00eb6b298e6d78656a1b34e2b91b34940d02f1ca8b22310e8a0_5.png
EOF

popd && pushd cubemaps/1
cat <<EOF | xargs wget --continue
https://www.shadertoy.com/media/a/0681c014f6c88c356cf9c0394ffe015acc94ec1474924855f45d22c3e70b5785.png
https://www.shadertoy.com/media/a/0681c014f6c88c356cf9c0394ffe015acc94ec1474924855f45d22c3e70b5785_1.png
https://www.shadertoy.com/media/a/0681c014f6c88c356cf9c0394ffe015acc94ec1474924855f45d22c3e70b5785_2.png
https://www.shadertoy.com/media/a/0681c014f6c88c356cf9c0394ffe015acc94ec1474924855f45d22c3e70b5785_3.png
https://www.shadertoy.com/media/a/0681c014f6c88c356cf9c0394ffe015acc94ec1474924855f45d22c3e70b5785_4.png
https://www.shadertoy.com/media/a/0681c014f6c88c356cf9c0394ffe015acc94ec1474924855f45d22c3e70b5785_5.png
EOF


popd && pushd cubemaps/2
cat <<EOF | xargs wget --continue
https://www.shadertoy.com/media/a/488bd40303a2e2b9a71987e48c66ef41f5e937174bf316d3ed0e86410784b919.jpg
https://www.shadertoy.com/media/a/488bd40303a2e2b9a71987e48c66ef41f5e937174bf316d3ed0e86410784b919_1.jpg
https://www.shadertoy.com/media/a/488bd40303a2e2b9a71987e48c66ef41f5e937174bf316d3ed0e86410784b919_2.jpg
https://www.shadertoy.com/media/a/488bd40303a2e2b9a71987e48c66ef41f5e937174bf316d3ed0e86410784b919_3.jpg
https://www.shadertoy.com/media/a/488bd40303a2e2b9a71987e48c66ef41f5e937174bf316d3ed0e86410784b919_4.jpg
https://www.shadertoy.com/media/a/488bd40303a2e2b9a71987e48c66ef41f5e937174bf316d3ed0e86410784b919_5.jpg
EOF

popd && pushd cubemaps/3
cat <<EOF | xargs wget --continue
https://www.shadertoy.com/media/a/550a8cce1bf403869fde66dddf6028dd171f1852f4a704a465e1b80d23955663.png
https://www.shadertoy.com/media/a/550a8cce1bf403869fde66dddf6028dd171f1852f4a704a465e1b80d23955663_1.png
https://www.shadertoy.com/media/a/550a8cce1bf403869fde66dddf6028dd171f1852f4a704a465e1b80d23955663_2.png
https://www.shadertoy.com/media/a/550a8cce1bf403869fde66dddf6028dd171f1852f4a704a465e1b80d23955663_3.png
https://www.shadertoy.com/media/a/550a8cce1bf403869fde66dddf6028dd171f1852f4a704a465e1b80d23955663_4.png
https://www.shadertoy.com/media/a/550a8cce1bf403869fde66dddf6028dd171f1852f4a704a465e1b80d23955663_5.png
EOF

popd && pushd cubemaps/4
cat <<EOF | xargs wget --continue
https://www.shadertoy.com/media/a/585f9546c092f53ded45332b343144396c0b2d70d9965f585ebc172080d8aa58.jpg
https://www.shadertoy.com/media/a/585f9546c092f53ded45332b343144396c0b2d70d9965f585ebc172080d8aa58_1.jpg
https://www.shadertoy.com/media/a/585f9546c092f53ded45332b343144396c0b2d70d9965f585ebc172080d8aa58_2.jpg
https://www.shadertoy.com/media/a/585f9546c092f53ded45332b343144396c0b2d70d9965f585ebc172080d8aa58_3.jpg
https://www.shadertoy.com/media/a/585f9546c092f53ded45332b343144396c0b2d70d9965f585ebc172080d8aa58_4.jpg
https://www.shadertoy.com/media/a/585f9546c092f53ded45332b343144396c0b2d70d9965f585ebc172080d8aa58_5.jpg
EOF

popd && pushd cubemaps/5
cat <<EOF | xargs wget --continue
https://www.shadertoy.com/media/a/793a105653fbdadabdc1325ca08675e1ce48ae5f12e37973829c87bea4be3232.png
https://www.shadertoy.com/media/a/793a105653fbdadabdc1325ca08675e1ce48ae5f12e37973829c87bea4be3232_1.png
https://www.shadertoy.com/media/a/793a105653fbdadabdc1325ca08675e1ce48ae5f12e37973829c87bea4be3232_2.png
https://www.shadertoy.com/media/a/793a105653fbdadabdc1325ca08675e1ce48ae5f12e37973829c87bea4be3232_3.png
https://www.shadertoy.com/media/a/793a105653fbdadabdc1325ca08675e1ce48ae5f12e37973829c87bea4be3232_4.png
https://www.shadertoy.com/media/a/793a105653fbdadabdc1325ca08675e1ce48ae5f12e37973829c87bea4be3232_5.png
EOF


popd && mkdir -p volumes && pushd volumes

cat <<EOF | xargs wget  --continue
https://www.shadertoy.com/media/a/27012b4eadd0c3ce12498b867058e4f717ce79e10a99568cca461682d84a4b04.bin -O grey_noise3d.bin
https://www.shadertoy.com/media/a/aea6b99da1d53055107966b59ac5444fc8bc7b3ce2d0bbb6a4a3cbae1d97f3aa.bin -O rgba_noise3d.bin
EOF


popd && mkdir -p videos && pushd videos
cat <<EOF | xargs wget --continue
https://www.shadertoy.com/media/a/3405e48f74815c7baa49133bdc835142948381fbe003ad2f12f5087715731153.ogv
https://www.shadertoy.com/media/a/e81e818ac76a8983d746784b423178ee9f6cdcdf7f8e8d719341a6fe2d2ab303.webm
https://www.shadertoy.com/media/a/35c87bcb8d7af24c54d41122dadb619dd920646a0bd0e477e7bdc6d12876df17.webm
https://www.shadertoy.com/media/a/c3a071ecf273428bc72fc72b2dd972671de8da420a2d4f917b75d20e1c24b34c.ogv
EOF

popd && mkdir -p music && pushd music
cat <<EOF | xargs wget --continue
https://www.shadertoy.com/media/a/a6a1cf7a09adfed8c362492c88c30d74fb3d2f4f7ba180ba34b98556660fada1.mp3 -O 8_bit_mentality.mp3
https://www.shadertoy.com/media/a/3c33c415862bb7964d256f4749408247da6596f2167dca2c86cc38f83c244aa6.mp3 -O ElectroNebulae.mp3
https://www.shadertoy.com/media/a/29de534ed5e4a6a224d2dfffab240f2e19a9d95f5e39de8898e850efdb2a99de.mp3 -O Experiment.mp3
https://www.shadertoy.com/media/a/48e2d9ef22ca6673330b8c38a260c87694d2bbc94c19fec9dfa4a1222c364a99.mp3 -O Most_Geometric_Person.mp3
https://www.shadertoy.com/media/a/d96b229eeb7a08d53adfcf1ff89e54c9ffeebed193d317d1a01cc8125c0f5cca.mp3 -O Tropical_Beeper.mp3
https://www.shadertoy.com/media/a/894a09f482fb9b2822c093630fc37f0ce6cfec02b652e4e341323e4b6e4a4543.mp3 -O Xtrackture.mp3
https://www.shadertoy.com/media/a/ec8a6ea755d34600547a5353f21f0a453f9f55ff95514383b2d80b8d71283eda.mp3 -O Ourpithyator.mp3
EOF
popd
