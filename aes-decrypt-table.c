/* aes-decrypt-table.c

   Decryption function for aes/rijndael block cipher.

   Copyright (C) 2002, 2013 Niels Möller

   This file is part of GNU Nettle.

   GNU Nettle is free software: you can redistribute it and/or
   modify it under the terms of either:

     * the GNU Lesser General Public License as published by the Free
       Software Foundation; either version 3 of the License, or (at your
       option) any later version.

   or

     * the GNU General Public License as published by the Free
       Software Foundation; either version 2 of the License, or (at your
       option) any later version.

   or both in parallel, as here.

   GNU Nettle is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   General Public License for more details.

   You should have received copies of the GNU General Public License and
   the GNU Lesser General Public License along with this program.  If
   not, see http://www.gnu.org/licenses/.
*/

#if HAVE_CONFIG_H
# include "config.h"
#endif

#include <stdlib.h>

#include "aes-internal.h"

const struct aes_table
_nettle_aes_decrypt_table =
  { /* isbox */
    {
      0x52,0x09,0x6a,0xd5,0x30,0x36,0xa5,0x38,
      0xbf,0x40,0xa3,0x9e,0x81,0xf3,0xd7,0xfb,
      0x7c,0xe3,0x39,0x82,0x9b,0x2f,0xff,0x87,
      0x34,0x8e,0x43,0x44,0xc4,0xde,0xe9,0xcb,
      0x54,0x7b,0x94,0x32,0xa6,0xc2,0x23,0x3d,
      0xee,0x4c,0x95,0x0b,0x42,0xfa,0xc3,0x4e,
      0x08,0x2e,0xa1,0x66,0x28,0xd9,0x24,0xb2,
      0x76,0x5b,0xa2,0x49,0x6d,0x8b,0xd1,0x25,
      0x72,0xf8,0xf6,0x64,0x86,0x68,0x98,0x16,
      0xd4,0xa4,0x5c,0xcc,0x5d,0x65,0xb6,0x92,
      0x6c,0x70,0x48,0x50,0xfd,0xed,0xb9,0xda,
      0x5e,0x15,0x46,0x57,0xa7,0x8d,0x9d,0x84,
      0x90,0xd8,0xab,0x00,0x8c,0xbc,0xd3,0x0a,
      0xf7,0xe4,0x58,0x05,0xb8,0xb3,0x45,0x06,
      0xd0,0x2c,0x1e,0x8f,0xca,0x3f,0x0f,0x02,
      0xc1,0xaf,0xbd,0x03,0x01,0x13,0x8a,0x6b,
      0x3a,0x91,0x11,0x41,0x4f,0x67,0xdc,0xea,
      0x97,0xf2,0xcf,0xce,0xf0,0xb4,0xe6,0x73,
      0x96,0xac,0x74,0x22,0xe7,0xad,0x35,0x85,
      0xe2,0xf9,0x37,0xe8,0x1c,0x75,0xdf,0x6e,
      0x47,0xf1,0x1a,0x71,0x1d,0x29,0xc5,0x89,
      0x6f,0xb7,0x62,0x0e,0xaa,0x18,0xbe,0x1b,
      0xfc,0x56,0x3e,0x4b,0xc6,0xd2,0x79,0x20,
      0x9a,0xdb,0xc0,0xfe,0x78,0xcd,0x5a,0xf4,
      0x1f,0xdd,0xa8,0x33,0x88,0x07,0xc7,0x31,
      0xb1,0x12,0x10,0x59,0x27,0x80,0xec,0x5f,
      0x60,0x51,0x7f,0xa9,0x19,0xb5,0x4a,0x0d,
      0x2d,0xe5,0x7a,0x9f,0x93,0xc9,0x9c,0xef,
      0xa0,0xe0,0x3b,0x4d,0xae,0x2a,0xf5,0xb0,
      0xc8,0xeb,0xbb,0x3c,0x83,0x53,0x99,0x61,
      0x17,0x2b,0x04,0x7e,0xba,0x77,0xd6,0x26,
      0xe1,0x69,0x14,0x63,0x55,0x21,0x0c,0x7d,
    },
    { /* itable */
      {
	0x50a7f451,0x5365417e,0xc3a4171a,0x965e273a,
	0xcb6bab3b,0xf1459d1f,0xab58faac,0x9303e34b,
	0x55fa3020,0xf66d76ad,0x9176cc88,0x254c02f5,
	0xfcd7e54f,0xd7cb2ac5,0x80443526,0x8fa362b5,
	0x495ab1de,0x671bba25,0x980eea45,0xe1c0fe5d,
	0x02752fc3,0x12f04c81,0xa397468d,0xc6f9d36b,
	0xe75f8f03,0x959c9215,0xeb7a6dbf,0xda595295,
	0x2d83bed4,0xd3217458,0x2969e049,0x44c8c98e,
	0x6a89c275,0x78798ef4,0x6b3e5899,0xdd71b927,
	0xb64fe1be,0x17ad88f0,0x66ac20c9,0xb43ace7d,
	0x184adf63,0x82311ae5,0x60335197,0x457f5362,
	0xe07764b1,0x84ae6bbb,0x1ca081fe,0x942b08f9,
	0x58684870,0x19fd458f,0x876cde94,0xb7f87b52,
	0x23d373ab,0xe2024b72,0x578f1fe3,0x2aab5566,
	0x0728ebb2,0x03c2b52f,0x9a7bc586,0xa50837d3,
	0xf2872830,0xb2a5bf23,0xba6a0302,0x5c8216ed,
	0x2b1ccf8a,0x92b479a7,0xf0f207f3,0xa1e2694e,
	0xcdf4da65,0xd5be0506,0x1f6234d1,0x8afea6c4,
	0x9d532e34,0xa055f3a2,0x32e18a05,0x75ebf6a4,
	0x39ec830b,0xaaef6040,0x069f715e,0x51106ebd,
	0xf98a213e,0x3d06dd96,0xae053edd,0x46bde64d,
	0xb58d5491,0x055dc471,0x6fd40604,0xff155060,
	0x24fb9819,0x97e9bdd6,0xcc434089,0x779ed967,
	0xbd42e8b0,0x888b8907,0x385b19e7,0xdbeec879,
	0x470a7ca1,0xe90f427c,0xc91e84f8,0x00000000,
	0x83868009,0x48ed2b32,0xac70111e,0x4e725a6c,
	0xfbff0efd,0x5638850f,0x1ed5ae3d,0x27392d36,
	0x64d90f0a,0x21a65c68,0xd1545b9b,0x3a2e3624,
	0xb1670a0c,0x0fe75793,0xd296eeb4,0x9e919b1b,
	0x4fc5c080,0xa220dc61,0x694b775a,0x161a121c,
	0x0aba93e2,0xe52aa0c0,0x43e0223c,0x1d171b12,
	0x0b0d090e,0xadc78bf2,0xb9a8b62d,0xc8a91e14,
	0x8519f157,0x4c0775af,0xbbdd99ee,0xfd607fa3,
	0x9f2601f7,0xbcf5725c,0xc53b6644,0x347efb5b,
	0x7629438b,0xdcc623cb,0x68fcedb6,0x63f1e4b8,
	0xcadc31d7,0x10856342,0x40229713,0x2011c684,
	0x7d244a85,0xf83dbbd2,0x1132f9ae,0x6da129c7,
	0x4b2f9e1d,0xf330b2dc,0xec52860d,0xd0e3c177,
	0x6c16b32b,0x99b970a9,0xfa489411,0x2264e947,
	0xc48cfca8,0x1a3ff0a0,0xd82c7d56,0xef903322,
	0xc74e4987,0xc1d138d9,0xfea2ca8c,0x360bd498,
	0xcf81f5a6,0x28de7aa5,0x268eb7da,0xa4bfad3f,
	0xe49d3a2c,0x0d927850,0x9bcc5f6a,0x62467e54,
	0xc2138df6,0xe8b8d890,0x5ef7392e,0xf5afc382,
	0xbe805d9f,0x7c93d069,0xa92dd56f,0xb31225cf,
	0x3b99acc8,0xa77d1810,0x6e639ce8,0x7bbb3bdb,
	0x097826cd,0xf418596e,0x01b79aec,0xa89a4f83,
	0x656e95e6,0x7ee6ffaa,0x08cfbc21,0xe6e815ef,
	0xd99be7ba,0xce366f4a,0xd4099fea,0xd67cb029,
	0xafb2a431,0x31233f2a,0x3094a5c6,0xc066a235,
	0x37bc4e74,0xa6ca82fc,0xb0d090e0,0x15d8a733,
	0x4a9804f1,0xf7daec41,0x0e50cd7f,0x2ff69117,
	0x8dd64d76,0x4db0ef43,0x544daacc,0xdf0496e4,
	0xe3b5d19e,0x1b886a4c,0xb81f2cc1,0x7f516546,
	0x04ea5e9d,0x5d358c01,0x737487fa,0x2e410bfb,
	0x5a1d67b3,0x52d2db92,0x335610e9,0x1347d66d,
	0x8c61d79a,0x7a0ca137,0x8e14f859,0x893c13eb,
	0xee27a9ce,0x35c961b7,0xede51ce1,0x3cb1477a,
	0x59dfd29c,0x3f73f255,0x79ce1418,0xbf37c773,
	0xeacdf753,0x5baafd5f,0x146f3ddf,0x86db4478,
	0x81f3afca,0x3ec468b9,0x2c342438,0x5f40a3c2,
	0x72c31d16,0x0c25e2bc,0x8b493c28,0x41950dff,
	0x7101a839,0xdeb30c08,0x9ce4b4d8,0x90c15664,
	0x6184cb7b,0x70b632d5,0x745c6c48,0x4257b8d0,
      },
#if !AES_SMALL
      { /* Before: itable[1] */
	0xa7f45150,0x65417e53,0xa4171ac3,0x5e273a96,
	0x6bab3bcb,0x459d1ff1,0x58faacab,0x03e34b93,
	0xfa302055,0x6d76adf6,0x76cc8891,0x4c02f525,
	0xd7e54ffc,0xcb2ac5d7,0x44352680,0xa362b58f,
	0x5ab1de49,0x1bba2567,0x0eea4598,0xc0fe5de1,
	0x752fc302,0xf04c8112,0x97468da3,0xf9d36bc6,
	0x5f8f03e7,0x9c921595,0x7a6dbfeb,0x595295da,
	0x83bed42d,0x217458d3,0x69e04929,0xc8c98e44,
	0x89c2756a,0x798ef478,0x3e58996b,0x71b927dd,
	0x4fe1beb6,0xad88f017,0xac20c966,0x3ace7db4,
	0x4adf6318,0x311ae582,0x33519760,0x7f536245,
	0x7764b1e0,0xae6bbb84,0xa081fe1c,0x2b08f994,
	0x68487058,0xfd458f19,0x6cde9487,0xf87b52b7,
	0xd373ab23,0x024b72e2,0x8f1fe357,0xab55662a,
	0x28ebb207,0xc2b52f03,0x7bc5869a,0x0837d3a5,
	0x872830f2,0xa5bf23b2,0x6a0302ba,0x8216ed5c,
	0x1ccf8a2b,0xb479a792,0xf207f3f0,0xe2694ea1,
	0xf4da65cd,0xbe0506d5,0x6234d11f,0xfea6c48a,
	0x532e349d,0x55f3a2a0,0xe18a0532,0xebf6a475,
	0xec830b39,0xef6040aa,0x9f715e06,0x106ebd51,
	0x8a213ef9,0x06dd963d,0x053eddae,0xbde64d46,
	0x8d5491b5,0x5dc47105,0xd406046f,0x155060ff,
	0xfb981924,0xe9bdd697,0x434089cc,0x9ed96777,
	0x42e8b0bd,0x8b890788,0x5b19e738,0xeec879db,
	0x0a7ca147,0x0f427ce9,0x1e84f8c9,0x00000000,
	0x86800983,0xed2b3248,0x70111eac,0x725a6c4e,
	0xff0efdfb,0x38850f56,0xd5ae3d1e,0x392d3627,
	0xd90f0a64,0xa65c6821,0x545b9bd1,0x2e36243a,
	0x670a0cb1,0xe757930f,0x96eeb4d2,0x919b1b9e,
	0xc5c0804f,0x20dc61a2,0x4b775a69,0x1a121c16,
	0xba93e20a,0x2aa0c0e5,0xe0223c43,0x171b121d,
	0x0d090e0b,0xc78bf2ad,0xa8b62db9,0xa91e14c8,
	0x19f15785,0x0775af4c,0xdd99eebb,0x607fa3fd,
	0x2601f79f,0xf5725cbc,0x3b6644c5,0x7efb5b34,
	0x29438b76,0xc623cbdc,0xfcedb668,0xf1e4b863,
	0xdc31d7ca,0x85634210,0x22971340,0x11c68420,
	0x244a857d,0x3dbbd2f8,0x32f9ae11,0xa129c76d,
	0x2f9e1d4b,0x30b2dcf3,0x52860dec,0xe3c177d0,
	0x16b32b6c,0xb970a999,0x489411fa,0x64e94722,
	0x8cfca8c4,0x3ff0a01a,0x2c7d56d8,0x903322ef,
	0x4e4987c7,0xd138d9c1,0xa2ca8cfe,0x0bd49836,
	0x81f5a6cf,0xde7aa528,0x8eb7da26,0xbfad3fa4,
	0x9d3a2ce4,0x9278500d,0xcc5f6a9b,0x467e5462,
	0x138df6c2,0xb8d890e8,0xf7392e5e,0xafc382f5,
	0x805d9fbe,0x93d0697c,0x2dd56fa9,0x1225cfb3,
	0x99acc83b,0x7d1810a7,0x639ce86e,0xbb3bdb7b,
	0x7826cd09,0x18596ef4,0xb79aec01,0x9a4f83a8,
	0x6e95e665,0xe6ffaa7e,0xcfbc2108,0xe815efe6,
	0x9be7bad9,0x366f4ace,0x099fead4,0x7cb029d6,
	0xb2a431af,0x233f2a31,0x94a5c630,0x66a235c0,
	0xbc4e7437,0xca82fca6,0xd090e0b0,0xd8a73315,
	0x9804f14a,0xdaec41f7,0x50cd7f0e,0xf691172f,
	0xd64d768d,0xb0ef434d,0x4daacc54,0x0496e4df,
	0xb5d19ee3,0x886a4c1b,0x1f2cc1b8,0x5165467f,
	0xea5e9d04,0x358c015d,0x7487fa73,0x410bfb2e,
	0x1d67b35a,0xd2db9252,0x5610e933,0x47d66d13,
	0x61d79a8c,0x0ca1377a,0x14f8598e,0x3c13eb89,
	0x27a9ceee,0xc961b735,0xe51ce1ed,0xb1477a3c,
	0xdfd29c59,0x73f2553f,0xce141879,0x37c773bf,
	0xcdf753ea,0xaafd5f5b,0x6f3ddf14,0xdb447886,
	0xf3afca81,0xc468b93e,0x3424382c,0x40a3c25f,
	0xc31d1672,0x25e2bc0c,0x493c288b,0x950dff41,
	0x01a83971,0xb30c08de,0xe4b4d89c,0xc1566490,
	0x84cb7b61,0xb632d570,0x5c6c4874,0x57b8d042,
      },{ /* Before: itable[2] */
	0xf45150a7,0x417e5365,0x171ac3a4,0x273a965e,
	0xab3bcb6b,0x9d1ff145,0xfaacab58,0xe34b9303,
	0x302055fa,0x76adf66d,0xcc889176,0x02f5254c,
	0xe54ffcd7,0x2ac5d7cb,0x35268044,0x62b58fa3,
	0xb1de495a,0xba25671b,0xea45980e,0xfe5de1c0,
	0x2fc30275,0x4c8112f0,0x468da397,0xd36bc6f9,
	0x8f03e75f,0x9215959c,0x6dbfeb7a,0x5295da59,
	0xbed42d83,0x7458d321,0xe0492969,0xc98e44c8,
	0xc2756a89,0x8ef47879,0x58996b3e,0xb927dd71,
	0xe1beb64f,0x88f017ad,0x20c966ac,0xce7db43a,
	0xdf63184a,0x1ae58231,0x51976033,0x5362457f,
	0x64b1e077,0x6bbb84ae,0x81fe1ca0,0x08f9942b,
	0x48705868,0x458f19fd,0xde94876c,0x7b52b7f8,
	0x73ab23d3,0x4b72e202,0x1fe3578f,0x55662aab,
	0xebb20728,0xb52f03c2,0xc5869a7b,0x37d3a508,
	0x2830f287,0xbf23b2a5,0x0302ba6a,0x16ed5c82,
	0xcf8a2b1c,0x79a792b4,0x07f3f0f2,0x694ea1e2,
	0xda65cdf4,0x0506d5be,0x34d11f62,0xa6c48afe,
	0x2e349d53,0xf3a2a055,0x8a0532e1,0xf6a475eb,
	0x830b39ec,0x6040aaef,0x715e069f,0x6ebd5110,
	0x213ef98a,0xdd963d06,0x3eddae05,0xe64d46bd,
	0x5491b58d,0xc471055d,0x06046fd4,0x5060ff15,
	0x981924fb,0xbdd697e9,0x4089cc43,0xd967779e,
	0xe8b0bd42,0x8907888b,0x19e7385b,0xc879dbee,
	0x7ca1470a,0x427ce90f,0x84f8c91e,0x00000000,
	0x80098386,0x2b3248ed,0x111eac70,0x5a6c4e72,
	0x0efdfbff,0x850f5638,0xae3d1ed5,0x2d362739,
	0x0f0a64d9,0x5c6821a6,0x5b9bd154,0x36243a2e,
	0x0a0cb167,0x57930fe7,0xeeb4d296,0x9b1b9e91,
	0xc0804fc5,0xdc61a220,0x775a694b,0x121c161a,
	0x93e20aba,0xa0c0e52a,0x223c43e0,0x1b121d17,
	0x090e0b0d,0x8bf2adc7,0xb62db9a8,0x1e14c8a9,
	0xf1578519,0x75af4c07,0x99eebbdd,0x7fa3fd60,
	0x01f79f26,0x725cbcf5,0x6644c53b,0xfb5b347e,
	0x438b7629,0x23cbdcc6,0xedb668fc,0xe4b863f1,
	0x31d7cadc,0x63421085,0x97134022,0xc6842011,
	0x4a857d24,0xbbd2f83d,0xf9ae1132,0x29c76da1,
	0x9e1d4b2f,0xb2dcf330,0x860dec52,0xc177d0e3,
	0xb32b6c16,0x70a999b9,0x9411fa48,0xe9472264,
	0xfca8c48c,0xf0a01a3f,0x7d56d82c,0x3322ef90,
	0x4987c74e,0x38d9c1d1,0xca8cfea2,0xd498360b,
	0xf5a6cf81,0x7aa528de,0xb7da268e,0xad3fa4bf,
	0x3a2ce49d,0x78500d92,0x5f6a9bcc,0x7e546246,
	0x8df6c213,0xd890e8b8,0x392e5ef7,0xc382f5af,
	0x5d9fbe80,0xd0697c93,0xd56fa92d,0x25cfb312,
	0xacc83b99,0x1810a77d,0x9ce86e63,0x3bdb7bbb,
	0x26cd0978,0x596ef418,0x9aec01b7,0x4f83a89a,
	0x95e6656e,0xffaa7ee6,0xbc2108cf,0x15efe6e8,
	0xe7bad99b,0x6f4ace36,0x9fead409,0xb029d67c,
	0xa431afb2,0x3f2a3123,0xa5c63094,0xa235c066,
	0x4e7437bc,0x82fca6ca,0x90e0b0d0,0xa73315d8,
	0x04f14a98,0xec41f7da,0xcd7f0e50,0x91172ff6,
	0x4d768dd6,0xef434db0,0xaacc544d,0x96e4df04,
	0xd19ee3b5,0x6a4c1b88,0x2cc1b81f,0x65467f51,
	0x5e9d04ea,0x8c015d35,0x87fa7374,0x0bfb2e41,
	0x67b35a1d,0xdb9252d2,0x10e93356,0xd66d1347,
	0xd79a8c61,0xa1377a0c,0xf8598e14,0x13eb893c,
	0xa9ceee27,0x61b735c9,0x1ce1ede5,0x477a3cb1,
	0xd29c59df,0xf2553f73,0x141879ce,0xc773bf37,
	0xf753eacd,0xfd5f5baa,0x3ddf146f,0x447886db,
	0xafca81f3,0x68b93ec4,0x24382c34,0xa3c25f40,
	0x1d1672c3,0xe2bc0c25,0x3c288b49,0x0dff4195,
	0xa8397101,0x0c08deb3,0xb4d89ce4,0x566490c1,
	0xcb7b6184,0x32d570b6,0x6c48745c,0xb8d04257,
      },{ /* Before: itable[3] */
	0x5150a7f4,0x7e536541,0x1ac3a417,0x3a965e27,
	0x3bcb6bab,0x1ff1459d,0xacab58fa,0x4b9303e3,
	0x2055fa30,0xadf66d76,0x889176cc,0xf5254c02,
	0x4ffcd7e5,0xc5d7cb2a,0x26804435,0xb58fa362,
	0xde495ab1,0x25671bba,0x45980eea,0x5de1c0fe,
	0xc302752f,0x8112f04c,0x8da39746,0x6bc6f9d3,
	0x03e75f8f,0x15959c92,0xbfeb7a6d,0x95da5952,
	0xd42d83be,0x58d32174,0x492969e0,0x8e44c8c9,
	0x756a89c2,0xf478798e,0x996b3e58,0x27dd71b9,
	0xbeb64fe1,0xf017ad88,0xc966ac20,0x7db43ace,
	0x63184adf,0xe582311a,0x97603351,0x62457f53,
	0xb1e07764,0xbb84ae6b,0xfe1ca081,0xf9942b08,
	0x70586848,0x8f19fd45,0x94876cde,0x52b7f87b,
	0xab23d373,0x72e2024b,0xe3578f1f,0x662aab55,
	0xb20728eb,0x2f03c2b5,0x869a7bc5,0xd3a50837,
	0x30f28728,0x23b2a5bf,0x02ba6a03,0xed5c8216,
	0x8a2b1ccf,0xa792b479,0xf3f0f207,0x4ea1e269,
	0x65cdf4da,0x06d5be05,0xd11f6234,0xc48afea6,
	0x349d532e,0xa2a055f3,0x0532e18a,0xa475ebf6,
	0x0b39ec83,0x40aaef60,0x5e069f71,0xbd51106e,
	0x3ef98a21,0x963d06dd,0xddae053e,0x4d46bde6,
	0x91b58d54,0x71055dc4,0x046fd406,0x60ff1550,
	0x1924fb98,0xd697e9bd,0x89cc4340,0x67779ed9,
	0xb0bd42e8,0x07888b89,0xe7385b19,0x79dbeec8,
	0xa1470a7c,0x7ce90f42,0xf8c91e84,0x00000000,
	0x09838680,0x3248ed2b,0x1eac7011,0x6c4e725a,
	0xfdfbff0e,0x0f563885,0x3d1ed5ae,0x3627392d,
	0x0a64d90f,0x6821a65c,0x9bd1545b,0x243a2e36,
	0x0cb1670a,0x930fe757,0xb4d296ee,0x1b9e919b,
	0x804fc5c0,0x61a220dc,0x5a694b77,0x1c161a12,
	0xe20aba93,0xc0e52aa0,0x3c43e022,0x121d171b,
	0x0e0b0d09,0xf2adc78b,0x2db9a8b6,0x14c8a91e,
	0x578519f1,0xaf4c0775,0xeebbdd99,0xa3fd607f,
	0xf79f2601,0x5cbcf572,0x44c53b66,0x5b347efb,
	0x8b762943,0xcbdcc623,0xb668fced,0xb863f1e4,
	0xd7cadc31,0x42108563,0x13402297,0x842011c6,
	0x857d244a,0xd2f83dbb,0xae1132f9,0xc76da129,
	0x1d4b2f9e,0xdcf330b2,0x0dec5286,0x77d0e3c1,
	0x2b6c16b3,0xa999b970,0x11fa4894,0x472264e9,
	0xa8c48cfc,0xa01a3ff0,0x56d82c7d,0x22ef9033,
	0x87c74e49,0xd9c1d138,0x8cfea2ca,0x98360bd4,
	0xa6cf81f5,0xa528de7a,0xda268eb7,0x3fa4bfad,
	0x2ce49d3a,0x500d9278,0x6a9bcc5f,0x5462467e,
	0xf6c2138d,0x90e8b8d8,0x2e5ef739,0x82f5afc3,
	0x9fbe805d,0x697c93d0,0x6fa92dd5,0xcfb31225,
	0xc83b99ac,0x10a77d18,0xe86e639c,0xdb7bbb3b,
	0xcd097826,0x6ef41859,0xec01b79a,0x83a89a4f,
	0xe6656e95,0xaa7ee6ff,0x2108cfbc,0xefe6e815,
	0xbad99be7,0x4ace366f,0xead4099f,0x29d67cb0,
	0x31afb2a4,0x2a31233f,0xc63094a5,0x35c066a2,
	0x7437bc4e,0xfca6ca82,0xe0b0d090,0x3315d8a7,
	0xf14a9804,0x41f7daec,0x7f0e50cd,0x172ff691,
	0x768dd64d,0x434db0ef,0xcc544daa,0xe4df0496,
	0x9ee3b5d1,0x4c1b886a,0xc1b81f2c,0x467f5165,
	0x9d04ea5e,0x015d358c,0xfa737487,0xfb2e410b,
	0xb35a1d67,0x9252d2db,0xe9335610,0x6d1347d6,
	0x9a8c61d7,0x377a0ca1,0x598e14f8,0xeb893c13,
	0xceee27a9,0xb735c961,0xe1ede51c,0x7a3cb147,
	0x9c59dfd2,0x553f73f2,0x1879ce14,0x73bf37c7,
	0x53eacdf7,0x5f5baafd,0xdf146f3d,0x7886db44,
	0xca81f3af,0xb93ec468,0x382c3424,0xc25f40a3,
	0x1672c31d,0xbc0c25e2,0x288b493c,0xff41950d,
	0x397101a8,0x08deb30c,0xd89ce4b4,0x6490c156,
	0x7b6184cb,0xd570b632,0x48745c6c,0xd04257b8,
      },
#endif /* !AES_SMALL */
    }
  };
