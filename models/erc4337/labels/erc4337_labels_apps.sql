{{ config
(
    materialized = 'table',
    copy_grants=true
)
}}

SELECT name, address, category
FROM (VALUES
('$AF', '0x6c90a582c166f59de91f97fa7aef7315a968b342', 'ERC20'),
('AlfaFrens RewardController', '0x1fd7aee0321e31c7c47c4da183dc1054e1196b5f', 'SocialFi'),
('AlfaFrens ChannelFactory', '0x920390ccc401e63b69a92390dec0c1f3e881d7f4', 'SocialFi'),
('AFSwap', '0x91f9b8fead04a2b04a04eedb02f106cee565cc64', 'Claim'),
('AFSwap', '0xbcde2a24b3f2ef1ae3e1ab077e7ddfd3fd85f579', 'Airdrop'),
('$G1', '0xe36bd65609c08cd17b53520293523cf4560533d0', 'ERC20'),
('$USDC', '0x2791bca1f2de4661ed88a30c99a7a9449aa84174', 'ERC20'),
('$USDC', '0x7f5c764cbc14f9669b88837ca1490cca17c31607', 'ERC20'),
('$USDC', '0x0b2c639c533813f4aa9d7837caf62653d097ff85', 'ERC20'),
('$USDC', '0xff970a61a04b1ca14834a43f5de4533ebddb5cc8', 'ERC20'),
('$USDC', '0xaf88d065e77c8cc2239327c5edb3a432268e5831', 'ERC20'),
('$USDC', '0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48', 'ERC20'),
('$USDC', '0x833589fcd6edb6e08f4c7c32d4f71b54bda02913', 'ERC20'),
('$USDC', '0xd9aaec86b65d86f6a7b5b1b0c42ffa531710b6ca', 'ERC20'),
('$USDC', '0x176211869ca2b568f2a7d4ee941e073a821ee1ff', 'ERC20'),
('cbETH', '0xbe9895146f7af43049ca1c1ae358b0541ea49704', 'ERC20'),
('$USDT', '0xc2132d05d31c914a87c6611c10748aeb04b58e8f', 'ERC20'),
('$USDT', '0x94b008aa00579c1307b0ef2c499ad98a8ce58e58', 'ERC20'),
('$USDT', '0xdac17f958d2ee523a2206206994597c13d831ec7', 'ERC20'),
('$USDT', '0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9', 'ERC20'),
('$xFANTV', '0x9d9b975a31428fbf98dbd062c518db4d8ac31a8d', 'ERC20'),
('$WETH', '0x7ceb23fd6bc0add59e62ac25578270cff1b9f619', 'ERC20'),
('$WETH', '0x82af49447d8a07e3bd95bd0d56f35241523fbab1', 'ERC20'),
('$WETH', '0x4200000000000000000000000000000000000006', 'ERC20'),
('$RGN', '0x9b1a0d2951b11ac26a6cbbd5aef2c4cb014b3b6e', 'ERC20'),
('$DAI', '0x8f3cf7ad23cd3cadbd9735aff958023239c6a063', 'ERC20'),
('$DAI', '0xda10009cbd5d07dd0cecc66161fc93d7c9000da1', 'ERC20'),
('$CYBER', '0x14778860e937f509e651192a90589de711fb88a9', 'ERC20'),
('$ECO', '0xe7bc9b3a936f122f08aac3b1fac3c3ec29a78874', 'ERC20'),
('$OP', '0x4200000000000000000000000000000000000042', 'ERC20'),
('$WSTETH', '0x1f32b1c2345538c0c6f582fcb022739c4a194ebb', 'ERC20'),
('$WSTETH', '0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0', 'ERC20'),
('$SUSD', '0x8c6f28f2f1a3c87f0f938b96d27520d9751ec8d9', 'ERC20'),
('$WLD', '0xdc6ff44d5d932cbd77b52e5612ba0529dc6226f1', 'ERC20'),
('$ARB', '0x912ce59144191c1204e64559fe8253a0e49e6548', 'ERC20'),
('$WBTC', '0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f', 'ERC20'),
('$UNI', '0xfa7f8980b0f1e64a2062791cc3b0871572f1f7f0', 'ERC20'),
('$WLP', '0x6f7353b59476dbd1de23d7113be7a7fbe6f343e5', 'ERC20'),
('$WINR', '0xd77b108d4f6cefaa0cae9506a934e825becca46e', 'ERC20'),
('CapX', '0x543fe007012019e92b602ddcf8585bd2685ce6bd', 'quest'),
('CapX', '0x2a2e9e7b63522256dc5ec19337ef8a63630a9808', 'quest'),
('CapX', '0x2209538840f0a553fd6c630a755a269893e040fa', 'quest'),
('Cyberconnect', '0x417f5a41305ddc99d18b5e176521b468b2a31b86', 'social'),
('Cyberconnect', '0x4bc54260ec3617b3f73fdb1fa22417ed109f372c', 'social'),
('Minishard NFT', '0x49253c64e6fa46d299177b8a94ae49d2f82c5c95', 'NFT'),
('Fantazy', '0x215b7d398a2f50d3db2ca73230293b9da84dc11d', 'betting'),
('Fantazy', '0xbb2960ae6fd5a14b781b70034faf71e19816019e', 'betting'),
('The Noise NFT', '0x99184e2c41fb4271145fbd3a3acbf6333e103c20', 'NFT'),
('Dexwin', '0x2bf3602248a7e74169db9f9ff1f6e1ff9c9c5d83', 'betting'),
('Dexwin', '0x0a0183e21ac695c24197b2c512fdff3d1a8d97a3', 'betting'),
('Dexwin', '0x3b30e0f388f40600472cdf26964dde3150189749', 'betting'),
('Fan TV', '0xfd44f1a3fd318f231eea03d58624887f136ca2bf', 'Watch2Earn'),
('Azuro', '0x7043e4e1c4045424858ecbced80989feafc11b36', 'betting'),
('1inch', '0x1111111254eeb25477b68fb85ed929f73a960582', 'DEX'),
('Lifi', '0x1231deb6f5749ef6ce6943a275a1d3e7486f4eae', 'bridge'),
('Aave', '0x794a61358d6845594f94dc1db02a252b5b4814ad', 'lending'),
('Uniswap', '0x3fc91a3afd70395cd496c647d5a6cc9d4b2b7fad', 'DEX'),
('Uniswap', '0xb555edf5dcf85f42ceef1f3630a52a108e55a654', 'DEX'),
('Odos', '0xca423977156bb05b13a2ba3b76bc5419e2fe9680', 'DEX'),
('Synthetix', '0x59b007e9ea8f89b069c43f8f45834d30853e3699', 'derivatives'),
('Kwenta', '0x296267efbbdd42a8c2f87940f676f4059469e597', 'derivatives'),
('Overtime', '0x170a5714112daeff20e798b6e92e25b86ea603c1', 'betting'),
('Squid Router', '0xce16f69375520ab01377ce7b88f5ba8c48f8d666', 'DEX'),
('JustBet', '0xb63139c32e599e97d1c5c752a5ebeb6b47ab0022', 'betting'),
('JustBet', '0x2e34309b2ee48b5118d1a8a8a3c384c1428de5cb', 'betting'),
('JustBet', '0x6409706079be630a570211646e72a4624913136b', 'betting'),
('JustBet', '0xb042923180fd2a64f8d13c67681831a68d023d28', 'betting'),
('JustBet', '0x014842d10b200a7a0dae0c8cad2cb6d8dc5efdac', 'betting'),
('JustBet', '0x16a037a3d215454fc5ee9ca00a074180f517ab7e', 'betting'),
('JustBet', '0xd1b088b5330e2587b980789bf09ccb33551a0c21', 'betting'),
('JustBet', '0x977513181d0da50240f085cbf92a3f4237b3df49', 'betting'),
('JustBet', '0xd9e3d7e11a28d11359d2990b5e3d175a6cf22888', 'betting'),
('JustBet', '0xfbe73f3a3c849cc2e94ffc31d368a22a1da70c47', 'betting'),
('JustBet', '0x112d687698ef9fc623e7216918bc5e3dcb81b7c4', 'betting'),
('JustBet', '0x3b12dababcdf51ae095a10256e67e9ef33bade5f', 'betting'),
('JustBet', '0x6d9ef98c46f04a8d5cf50049c22b6c0eb0b74d5b', 'betting'),
('JustBet', '0x501ee51eb0204019b66c5c6db2c14a18a88792c7', 'betting'),
('JustBet', '0x31265c0199625e1dcc39d91ef36cd2d39a7f3908', 'betting'),
('JustBet', '0x4a69dab7333a4192d6e69d8b3f24272d11732d16', 'betting'),
('JustBet', '0x2d5721f87138f8d9fe2cd6167c5292b0b9196182', 'betting'),
('JustBet', '0xe137bffa154a94747f1674a545f178ef80d725cd', 'betting'),
('JustBet', '0xddaecf4b02a3e45b96fc2d7339c997e072b0d034', 'betting'),
('JustBet', '0xde21ea2743c5d6f336e03ee26a97379a9ab1542a', 'betting'),
('JustBet', '0x4c39d088fc7caa9f47132fb1c82db6ebdda569f0', 'betting'),
('JustBet', '0x5e56e64961caeb250eb845586f87aa917247a45d', 'betting'),
('JustBet', '0x8535040cac56026546953a7b72998f82d43b290c', 'betting'),
('JustBet', '0xa255ddb3bb7f12cac46494047506da4a67a805be', 'betting'),
('JustBet', '0x691d65a6e9347c94cc14ec363601ceae71ce8b81', 'betting'),
('JustBet', '0xbc46a9701f4cc3a9562d60e789adcfa58ab1f7cf', 'betting'),
('JustBet', '0xd46f9663f494f3b4b7dd6a22e5fc22d0bf6c0dd4', 'betting'),
('JustBet', '0x71eb4239e6b8c081b2945e65245da1e19a03c785', 'betting'),
('JustBet', '0x0ec047917a443fb3b8aaf244e7e48ad217d15fdc', 'betting'),
('JustBet', '0x20223bdbf8644678fd9e2c78acf20fb8258f410e', 'betting'),
('GMX', '0x09f77e8a13de9a35a7231028187e9fd5db8a2acb', 'derivatives'),
('GMX', '0xb87a436b93ffe9d75c5cfa7bacfff96430b09868', 'derivatives'),
('Degensbet', '0xe7703c5c264cdf7b86bee65582759cd37ed3efac', 'betting'),
('Degensbet', '0x162309511d386e28015fd0a9a33d3df50f4e5c8c', 'betting'),
('Degensbet', '0x885b8d3c9f86cba2cc9d7c702171e7d065176a45', 'betting'),
('Treasure DAO', '0x072b65f891b1a389539e921bdb9427af41a7b1f7', 'game'),
('$stETH', '0xae7ab96520de3a18e5e111b5eaab095312d7fe84', 'ERC20'),
('EigenLayer', '0x858646372cc42e1a627fce94aa7a7033e7cf075a', 'restaking'),
('$rETH', '0xae78736cd615f374d3085123a210448e74fc6393', 'ERC20'),
('Burn Address', '0x0000000000000000000000000000000000000001', 'burn address'),
('CyberID', '0xe55793f55df1f1b5037eba41881663583d4f9b24', 'NFT'),
('ZTX Hoodie', '0x2fd9c72ea5763340e96e9369226032c38cf7a1da', 'NFT'),
('Cyberconnect', '0xb2bbfc07948fedeb5935316203c33ce70bef57d0', 'social'),
('Gong', '0xe6ff0ea09e3f58c0065fdb0305a925a476380bba', 'quest'),
('CapX ID', '0x40a3e8318a3de306ce27386b72cd05594d78f8cb', 'NFT'),
('Realm ID', '0x8eb187a55b701f8990539bf219b7921d5d3bdadd', 'NFT'),
('Anichess Orb Token Claim', '0x163f88becdf706499023d4364fd9c4fe51a03283', 'NFT drop'),
('Stader', '0xcf5ea1b38380f6af39068375516daf40ed70d299', 'Staking'),
('ZerooneGallery', '0x02ff4cf1e5522bdc6f85ccb383dd1d2521460613', 'NFT market'),
('$USDC', '0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e', 'ERC20'),
('$sAVAX', '0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be', 'ERC20'),
('$USDT', '0x9702230a8ea53601f5cd2dc00fdbc13d4df4a8c7', 'ERC20'),
('$wAVAX', '0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7', 'ERC20'),
('$AMPL', '0x027dbca046ca156de9622cd1e2d907d375e53aa7', 'ERC20'),
('Zeroone Collection Factory', '0xf92d80b79da082f0a289a4af41652d61e72bdda8', 'factory'),
('Art-and-stuff', '0x0ccd3679d1c2752130cb1f6ec79454155616f53f', 'NFT'),
('Classes Collection', '0x99274da5502687831430c94936938f7d7bdb40b7', 'NFT'),
('Colborns Collection', '0xcce45c565693aa7bc9f2b79a54575387d1d906c9', 'NFT'),
('Tormentials Collection', '0x60789da274e66bb57262e7600a10167f4e8662d0', 'NFT'),
('ElementEx', '0x2317d8b224328644759319dffa2a5da77c72e0e9', 'NFT market'),
('Biconomy Session Key Manager', '0x000002fbffedd9b33f4e7156f2de8d48945e7489', 'session keys'),
('Biconomy Session Key Manager', '0x306d7aeef155d8453a4c0413ee21fff545915948', 'session keys'),
('CyberID Registry', '0x0d56da4a8cf09bec31e22c66209605ff7dfb8ea2', 'name service'),
('Telefrens', '0x2c321b82d672cadc733b714792242aba134bf18c', 'social'),
('$LUA', '0xc3abc47863524ced8daf3ef98d74dd881e131c38', 'ERC20'),
('$LUAUSD', '0x1dd6b5f9281c6b4f043c02a83a46c2772024636c', 'ERC20'),
('PancakeSwap', '0x678aa4bf4e210cf2166753e054d5b7c31cc7fa86', 'DEX'),
('BasePaint', '0xba5e05cb26b78eda3a2f8e3b3814726305dcac83', 'game'),
('SampleNFT', '0xfee13462d096c2b9205c8b0c3b985bd4693e08b1', 'NFT'),
('$tBTC', '0x236aa50979d5f3de3bd1eeb40e81137f22ab794b', 'ERC20'),
('Daimo EphemeralNotes', '0x4adca7cb84497c9c4c308063d2f219c7b6041183', 'escrow'),
('$mhotx', '0xdad86b45285df081670ffba7569e04542f2ce55d', 'ERC20'),
('$ETHx', '0xa35b1b31ce002fbf2058d22f30f95d405200a15b', 'ERC20'),
('Odos', '0xcf5540fffcdc3d510b18bfca6d2b9987b0772559', 'DEX'),
('KelpDAO', '0x036676389e48133b63a802f8635ad39e752d375d', 'restaking'),
('$rsETH', '0xa1290d69c65a6fe4df752f95823fae25cb99e5a7', 'ERC20'),
('$PENDLE-LPT', '0x4f43c77872db6ba177c270986cd30c3381af37ee', 'ERC20'),
('Pendle Router', '0x00000000005bbb0ef59571e58418f9a4357b68a0', 'DEX'),
('$DefinitiveSharesLevCompV3steth', '0x4184a083307a208f5bf20d0b44e161bc55aae996', 'ERC20'),
('Blacksmith', '0xa29d89f65ea06881e2ab724cd247ebf07ee4273a', 'DEX'),
('Kyberswap', '0x6131b5fae19ea4f9d964eac0408e4408b66337b5', 'DEX'),
('Piggybox', '0x1836084c8d1bf58118f072baeddd1523403b1b32', 'NFT'),
('Safe4337Module', '0xa581c4a4db7175302464ff3c06380bc3270b4037', 'plugin'),
('Safe4337Module', '0x75cf11467937ce3f2f357ce24ffc3dbf8fd5c226', 'plugin'),
('$USBG', '0x20b5630824be86108356215fcc9d65b1fca8376a', 'ERC20'),
('$DEGEN', '0x4ed4e862860bed51a9570b96d89af5e1b0efefed', 'ERC20'),
('Kwenta', '0x1353f762736eddc82d26a1995b9cb0eabfa034d0', 'derivatives'),
('$ALFA', '0x905cf6adf9510ee12c78dd9c6a5445320db24342', 'ERC20'),
('$PDL', '0x32ec636a0d995f87bd41305abffdfc10bc2e179a', 'ERC20'),
('Superfluid', '0x4c073b3bab6d8826b8c5b229f3cfdc1ec6e47e74', 'streaming'),
('$DEGENx', '0x1eff3dd78f4a14abfa9fa66579bd3ce9e1b30529', 'ERC20'),
('Superfluid', '0xcfa132e353cb4e398080b9700609bb008eceb125', 'streaming'),
('Superfluid', '0x30e0b740acfb45b6edb9eed40094134f24d8f159', 'streaming'),
('Reach', '0xfae1a99fc906c5f5ad65f32822ec0cd9808f2bf2', 'ERC20 claim'),
('PassportRegistry', '0x5f3aa689c4dcbae505e6f6c8548dbd9b908ba71d', 'identity'),
('Kwenta', '0xe331a7eec851ba702aa8bf43070a178451d6d28e', 'derivatives'),
('$Locked Nekocoin', '0x6668bc6eea73404b4da5775c774fafc815b66b36', 'ERC20'),
('$Nekocoin', '0x139052115f8b1773cf7dcba6a553f922a2e54f69', 'ERC20'),
('OpenSocial', '0x00000066c6c6fca286f48a7f4e989b7198c26caf', 'social'),
('Blocklords', '0xa5eae9b57ce5f22785263223eee03fcad2e4cd76', 'NFT'),
('Blocklords', '0x017405a2de0613e12cd3d7b67e691bfefc46debf', 'game'),
('ManagedAccountFactory Thirdweb', '0x463effb51873c7720c810ac7fb2e145ec2f8cc60', 'factory'),
('Blocklords', '0x80625310db240631a91f61659ccc550ea9761742', 'game'),
('Uncuts', '0x077ab174ac10c904c5393f65fade8279dfbd3779', 'NFT'),
('ManagedAccountFactory Thirdweb', '0xa0b9ebd2cc138e0748c69baf66df2e01c57521ec', 'factory'),
('ManagedAccountFactory Thirdweb', '0x0c4176d4a4e2bb32ede3bfab928fd26ad8d15749', 'factory'),
('ManagedAccountFactory Thirdweb', '0x1d126c5366aaaebe53fed61242553923284e2f5b', 'factory'),
('AccountFactory Thirdweb', '0x85e23b94e7f5e9cc1ff78bce78cfb15b81f0df00', 'factory'),
('LyncReinvent Lottery', '0x31b47ee2a5103441d95cb7ecf0a74d907d8b6a87', 'game'),
('AccountFactory Thirdweb', '0x20c70bd6588511f1824fbe116928c3d6c4b989ab', 'factory'),
('Blocklords', '0x0982b3a5b24b2bd8ef74126e15fca2decfd75a28', 'NFT'),
('Hedgey Finance', '0xe9c01f928296359ba1d0ad1000cc9bf972cb0026', 'ERC20 claim'),
('Jasper Vault', '0xa5db2700e2cc1e007d9f50261ecb04339d712e3a', 'options'),
('Ducklings', '0xb66bf78cad7cbab51988ddc792652cbabdff7675', 'game'),
('Yellow Network', '0xb5f3a9dd92270f55e55b7ac7247639953538a261', 'Staking'),
('Yellow Network', '0x48e2be6796fc1323e4f6b5a1b3d8ab2666bdf872', 'quest'),
('Yellow Network', '0xf100dbeb1bfa3d5f73d71fba4ec4f015a3c2d5eb', 'game'),
('Yellow Network', '0xf81a43eba92538b0323fcdb1a040f2183b352ca3', 'escrow'),
('Yellow Network', '0x0ba4d7cb34ff4b4a60338a0234576f52d1631182', 'escrow'),
('Yellow Network', '0x2a8b51821884cf9a7ea1a24c72e46ff52dcb4f16', 'DEX'),
('Yellow Network', '0x5df971419a39cc846b801b22d56af59234b86238', 'ERC20 claim'),
('$PCM', '0xd0cf4de352ac8dcce00bd6b93ee73d3cb272edc3', 'ERC20'),
('KIP', '0xd692f41fd540abb39aff27d7914ad7f1831f785b', 'login'),
('PTOCS', '0x0d7d21ae700d0e3d9f320a26b4ff23f314f6d8c8', 'NFT'),
('Somon Badge', '0x831c653440fbc393c78b9f6e5dcae54c4cba80c5', 'NFT'),
('Wormfare', '0x381ae980c9da2a15c5f210809e4ca50853a4918d', 'game'),
('SoMon Claim', '0x3c5c3b31f84b3caefc145801bbd59f3db694006d', 'ERC20 claim'),
('Towns', '0x9978c826d93883701522d2ca645d5436e5654252', 'messaging'),
('REACH', '0x4379c13143eb91148ff9282cfb2f93536687a45b', 'messaging'),
('Super Champs', '0x974474c8bcb36302be93858466728271fb36544e', 'game'),
('Super Champs', '0xba957a2f3424d72d6c3b788dfcda4fe104d8ce49', 'game'),
('$OwO', '0x5d559ea7bb2dae4b694a079cb8328a2145fd32f6', 'ERC20'),
('$PTT', '0x385f490c56932563bad469c59dc1b79ec84fbdec', 'ERC20'),
('$BSC-USD', '0x55d398326f99059ff775485246999027b3197955', 'ERC20'),
('Barz DefaultFallbackHandler', '0x2e7f1dae1f3799d20f5c31befdc7a620f664728d', 'plugin'),
('$GFAL', '0x47c454ca6be2f6def6f32b638c80f91c9c3c5949', 'ERC20'),
('Barz Secp256r1VerificationFacet', '0xee1af8e967ec04c84711842796a5e714d2fd33e6', 'plugin'),
('OKX DEX', '0x9333c74bdd1e118634fe5664aca7a9710b108bab', 'DEX'),
('PancakeSwap', '0x1a0a18ac4becddbd6389559687d1a73d8927e416', 'DEX'),
('PancakeSwap', '0x13f4ea83d0bd40e75c8222255bc855a974568dd4', 'DEX'),
('$USDC', '0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d', 'ERC20'),
('$TS', '0x9879406c2ef6578ceb59009d64151ef3f225830b', 'ERC20'),
('Hexlink Airdrop', '0x70db527eb155260ff7723f5c30088e3c6484aa8e', 'ERC20 claim'),
('$Binance ETH', '0x2170ed0880ac9a755fd29b2688956bd959f933f8', 'ERC20'),
('$Binance Bitcoin', '0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c', 'ERC20'),
('Mimic', '0x3c11f6265ddec22f4d049dde480615735f451646', 'DEX'),
('Permit2', '0x31c2f6fcff4f8759b3bd5bf0e1084a055615c768', 'infra'),
('$TWT', '0x4b0f1812e5df2a09796481ff14017e6005508003', 'ERC20'),
('$BUSD', '0xe9e7cea3dedca5984780bafc599bd69add087d56', 'ERC20'),
('$ICE', '0xc335df7c25b72eec661d5aa32a7c2b7b2a1d1874', 'ERC20'),
('$CAKE', '0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82', 'ERC20'),
('$BabyDoge', '0xc748673057861a797275cd8a068abb95a902e8de', 'ERC20'),
('AccountFactory Thirdweb', '0x93e09526b7b35acd6eb8ff0693dfccd10f18a9df', 'thirdweb'),
('Syncswap', '0x80e38291e06339d10aab483c65695d004dbd5c69', 'DEX'),
('Velocore', '0x1d0188c4b276a09366d05d6be06af61a73bc7535', 'DEX'),
('$BEED', '0x5252d3f666a0707c4b7f9d9300bd965eee57695f', 'ERC20'),
('$BVRP', '0xe55fee191604cdbeb874f87a28ca89aed401c303', 'ERC20'),
('Polkamarket', '0xdcbe79f74c98368141798ea0b7b979b9ba54b026', 'prediction'),
('Rodeo', '0x132363a3bbf47e06cf642dd18e9173e364546c99', 'NFT market'),
('Grindery', '0x6428067d5a83e8f1fbbeb8d1b1bd46ccfdddb1c1', 'wallet'),
('UniversalX', '0x5f77b1fe53ba406b0ac3ef10c007a7b16e9f04f6', 'bridge'),
('UniversalX', '0x9cea88ee39b6cc09c478942bbf83bfa77d87b5f3', 'bridge'),
('UniversalX', '0x73791161b3d3a6fedf2b17fb79810b277c5ce517', 'bridge'),
('UniversalX', '0xde5af64abc426d63c3bcf13d8f672948227a745a', 'bridge'),
('UniversalX', '0x3762a79b34dfb6774cfd45dbf5fd9a2780873783', 'bridge'),
('Zerodev Session Key Validator', '0x5c06ce2b673fd5e6e56076e40dd46ab67f5a72a5', 'session keys'),
('PiChain Recovery Module', '0xb382daf7230b73f71a766c96707cf9ec6316b360', 'plugin'),
('Nekocoin Claim', '0xe1f5b740d1a0e5b66db505e3bacdbdda40dfb9cb', 'ERC20 claim'),
('Miracleplay', '0xebdacbaf7e6f2521250da8713ecacbaf10ccbe8a', 'game'),
('SuperAccounts', '0x1ee397850c3ca629d965453b3cf102e9a8806ded', 'identity'),
('SuperAccounts', '0xf362939804d8bf3a8fbfd895de232a58c2906f2b', 'identity'),
('SuperAccounts', '0x03e2c563cf77e3cdc0b7663cee117da14ea60848', 'identity'),
('BedRock', '0x11b3808a5c0b612bc284ef7c2c6034c77a66be7b', 'ERC20'),
('BedRock', '0x58cb2637deca008a7e9aebbe9843fa7e4d9d187d', 'ERC20'),
('BedRock', '0xbc48e8bb4e270e0c59cc1bc8885571b7bc33d03d', 'ERC20'),
('BedRock', '0xdfc7d2d003a053b2e0490531e9317a59962b511e', 'ERC20'),
('BedRock', '0x3376ebca0a85fc8d791b1001a571c41fdd61514a', 'ERC20'),
('BedRock', '0xd3c8da379d71a33bfee8875f87ac2748beb1d58d', 'ERC20'),
('BedRock', '0xf9775085d726e782e83585033b58606f7731ab18', 'ERC20'),
('BedRock', '0x89b2c722abf9e1c8dd215e4e8352e0f293740aeb', 'ERC20'),
('BedRock', '0x93919784c523f39cacaa98ee0a9d96c3f32b593e', 'ERC20'),
('BedRock', '0x552b0c6688fcae5cf0164f27fd129b882a42fa05', 'ERC20'),
('BedRock', '0x9203ce1bcded1a20f697e1780bc47d5b6d718031', 'ERC20'),
('Send', '0x3f14920c99beb920afa163031c4e47a3e03b3e4a', 'ERC20'), -- SendTokenV0
('Send', '0x60e5445edc1a469cfc0181861c88bd4b6895f615', 'ERC20'), -- SendTokenLockbox
('Send', '0xeab49138ba2ea6dd776220fe26b7b8e446638956', 'ERC20'), -- SendToken
('Send', '0x614f5273fdb63c1e1972fe1457ce77df1ca440a6', 'rewards'), -- SendMerkleDrop V0
('Send', '0x2c1630cd8f40d0458b7b5849e6cc2904a7d18a57', 'rewards'), -- SendMerkleDrop
('Send', '0x36f43082d01df4801af2d95aeed1a0200c5510ae', 'name service'), -- SendtagCheckout
('KresusVaultFactory', '0xf5e92c74e20e03403f7f366e94eec7f62530d483', 'factory')
) AS x (name, address, category)
