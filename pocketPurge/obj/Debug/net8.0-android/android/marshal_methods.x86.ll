; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [339 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [672 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 257
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 291
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39109920, ; 6: Newtonsoft.Json.dll => 0x254c520 => 214
	i32 39485524, ; 7: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 8: System.Threading.Thread => 0x28aa24d => 145
	i32 66541672, ; 9: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 10: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 332
	i32 68219467, ; 11: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 12: Microsoft.Maui.Graphics.dll => 0x44bb714 => 212
	i32 82292897, ; 13: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 98325684, ; 14: Microsoft.Extensions.Diagnostics.Abstractions => 0x5dc54b4 => 191
	i32 101534019, ; 15: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 275
	i32 117431740, ; 16: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 17: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 275
	i32 122350210, ; 18: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 19: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 295
	i32 142721839, ; 20: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 21: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 22: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 23: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 231
	i32 176265551, ; 24: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 25: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 277
	i32 184328833, ; 26: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 27: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 329
	i32 199333315, ; 28: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 330
	i32 205061960, ; 29: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 30: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 229
	i32 220171995, ; 31: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 221958352, ; 32: Microsoft.Extensions.Diagnostics.dll => 0xd3ad0d0 => 190
	i32 230216969, ; 33: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 251
	i32 230752869, ; 34: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 35: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 36: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 37: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 254259026, ; 38: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 177
	i32 261689757, ; 39: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 234
	i32 276479776, ; 40: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 41: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 253
	i32 280482487, ; 42: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 250
	i32 280992041, ; 43: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 301
	i32 291076382, ; 44: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 291275502, ; 45: Microsoft.Extensions.Http.dll => 0x115c82ee => 197
	i32 298918909, ; 46: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 47: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 329
	i32 318968648, ; 48: Xamarin.AndroidX.Activity.dll => 0x13031348 => 220
	i32 321597661, ; 49: System.Numerics => 0x132b30dd => 83
	i32 336156722, ; 50: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 314
	i32 342366114, ; 51: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 252
	i32 356389973, ; 52: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 313
	i32 360082299, ; 53: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 54: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 55: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 56: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 57: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 58: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 59: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 60: _Microsoft.Android.Resource.Designer => 0x17969339 => 335
	i32 403441872, ; 61: WindowsBase => 0x180c08d0 => 165
	i32 435591531, ; 62: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 325
	i32 441335492, ; 63: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 235
	i32 442565967, ; 64: System.Collections => 0x1a61054f => 12
	i32 449593833, ; 65: DataModel.dll => 0x1acc41e9 => 334
	i32 450948140, ; 66: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 248
	i32 451504562, ; 67: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 68: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 69: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 460248800, ; 70: Blazor-ApexCharts.dll => 0x1b6ed6e0 => 173
	i32 465846621, ; 71: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 72: System.dll => 0x1bff388e => 164
	i32 476646585, ; 73: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 250
	i32 486930444, ; 74: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 263
	i32 498788369, ; 75: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 76: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 312
	i32 503918385, ; 77: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 306
	i32 513247710, ; 78: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 205
	i32 526420162, ; 79: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 80: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 295
	i32 530272170, ; 81: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 82: Microsoft.Extensions.Logging => 0x20216150 => 200
	i32 540030774, ; 83: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 84: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 85: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 86: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 87: Jsr305Binding => 0x213954e7 => 288
	i32 569601784, ; 88: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 286
	i32 571435654, ; 89: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 194
	i32 577335427, ; 90: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 91: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 320
	i32 601371474, ; 92: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 93: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 94: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 95: Xamarin.AndroidX.CustomView => 0x2568904f => 240
	i32 627931235, ; 96: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 318
	i32 639843206, ; 97: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 246
	i32 643868501, ; 98: System.Net => 0x2660a755 => 81
	i32 662205335, ; 99: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 100: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 282
	i32 666292255, ; 101: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 227
	i32 672442732, ; 102: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 103: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 104: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 300
	i32 690569205, ; 105: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 106: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 297
	i32 693804605, ; 107: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 108: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 109: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 292
	i32 700358131, ; 110: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 111: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 315
	i32 709557578, ; 112: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 303
	i32 720511267, ; 113: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 296
	i32 722857257, ; 114: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 731701662, ; 115: Microsoft.Extensions.Options.ConfigurationExtensions => 0x2b9ce19e => 204
	i32 735137430, ; 116: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 117: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 118: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 217
	i32 759454413, ; 119: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 120: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 121: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 122: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 324
	i32 789151979, ; 123: Microsoft.Extensions.Options => 0x2f0980eb => 203
	i32 790371945, ; 124: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 241
	i32 804008546, ; 125: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 181
	i32 804715423, ; 126: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 127: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 255
	i32 823281589, ; 128: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 129: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 130: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 131: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 132: Xamarin.AndroidX.Print => 0x3246f6cd => 268
	i32 873119928, ; 133: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 134: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 135: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 136: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 137: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 138: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 327
	i32 928116545, ; 139: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 291
	i32 952186615, ; 140: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 955402788, ; 141: Newtonsoft.Json => 0x38f24a24 => 214
	i32 956575887, ; 142: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 296
	i32 966729478, ; 143: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 289
	i32 967690846, ; 144: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 252
	i32 975236339, ; 145: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 146: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 147: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 148: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 149: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 150: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 999186168, ; 151: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 196
	i32 1001831731, ; 152: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 153: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 272
	i32 1019214401, ; 154: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 155: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 189
	i32 1029334545, ; 156: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 302
	i32 1031528504, ; 157: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 290
	i32 1035644815, ; 158: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 225
	i32 1036536393, ; 159: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 160: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1048992957, ; 161: Microsoft.Extensions.Diagnostics.Abstractions.dll => 0x3e865cbd => 191
	i32 1052210849, ; 162: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 259
	i32 1067306892, ; 163: GoogleGson => 0x3f9dcf8c => 175
	i32 1082857460, ; 164: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 165: Xamarin.Kotlin.StdLib => 0x409e66d8 => 293
	i32 1098259244, ; 166: System => 0x41761b2c => 164
	i32 1099161166, ; 167: DataAcess => 0x4183de4e => 333
	i32 1106973742, ; 168: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 186
	i32 1118262833, ; 169: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 315
	i32 1121599056, ; 170: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 258
	i32 1127624469, ; 171: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 202
	i32 1149092582, ; 172: Xamarin.AndroidX.Window => 0x447dc2e6 => 285
	i32 1168523401, ; 173: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 321
	i32 1170634674, ; 174: System.Web.dll => 0x45c677b2 => 153
	i32 1173126369, ; 175: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 192
	i32 1175144683, ; 176: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 281
	i32 1178241025, ; 177: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 266
	i32 1203215381, ; 178: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 319
	i32 1204270330, ; 179: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 227
	i32 1208641965, ; 180: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 181: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 182: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 317
	i32 1243150071, ; 183: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 286
	i32 1253011324, ; 184: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 185: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 301
	i32 1264511973, ; 186: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 276
	i32 1267360935, ; 187: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 280
	i32 1273260888, ; 188: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 232
	i32 1275534314, ; 189: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 297
	i32 1278448581, ; 190: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 224
	i32 1293217323, ; 191: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 243
	i32 1293400105, ; 192: DataAcess.dll => 0x4d17b829 => 333
	i32 1309188875, ; 193: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 194: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 285
	i32 1324164729, ; 195: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 196: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 197: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 198: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 331
	i32 1376866003, ; 199: Xamarin.AndroidX.SavedState => 0x52114ed3 => 272
	i32 1379779777, ; 200: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 201: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 202: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 236
	i32 1408764838, ; 203: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 204: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 205: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 206: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 299
	i32 1434145427, ; 207: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 208: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 289
	i32 1439761251, ; 209: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 210: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 211: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1454105418, ; 212: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 193
	i32 1457743152, ; 213: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 214: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 215: es\Microsoft.Maui.Controls.resources => 0x57152abe => 305
	i32 1461234159, ; 216: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 217: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 218: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 219: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 226
	i32 1470490898, ; 220: Microsoft.Extensions.Primitives => 0x57a5e912 => 205
	i32 1479771757, ; 221: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 222: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 223: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 224: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 273
	i32 1493001747, ; 225: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 309
	i32 1505131794, ; 226: Microsoft.Extensions.Http => 0x59b67d12 => 197
	i32 1514721132, ; 227: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 304
	i32 1521091094, ; 228: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 196
	i32 1536373174, ; 229: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 230: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 231: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1546581739, ; 232: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 181
	i32 1550322496, ; 233: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 234: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 324
	i32 1565862583, ; 235: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 236: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 237: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 238: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 239: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 242
	i32 1592978981, ; 240: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 241: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 290
	i32 1601112923, ; 242: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 243: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 244: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 245: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 262
	i32 1622358360, ; 246: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 247: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 284
	i32 1632842087, ; 248: Microsoft.Extensions.Configuration.Json => 0x61533167 => 187
	i32 1635184631, ; 249: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 246
	i32 1636350590, ; 250: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 239
	i32 1639515021, ; 251: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 252: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 253: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1654881142, ; 254: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 180
	i32 1657153582, ; 255: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 256: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 278
	i32 1658251792, ; 257: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 287
	i32 1670060433, ; 258: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 234
	i32 1675553242, ; 259: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 260: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 261: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 262: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 263: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 264: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 265: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 294
	i32 1701541528, ; 266: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 267: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 255
	i32 1726116996, ; 268: System.Reflection.dll => 0x66e27484 => 97
	i32 1726981236, ; 269: pocketPurge => 0x66efa474 => 0
	i32 1728033016, ; 270: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 271: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 230
	i32 1736233607, ; 272: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 322
	i32 1743415430, ; 273: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 300
	i32 1744735666, ; 274: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746115085, ; 275: System.IO.Pipelines.dll => 0x68139a0d => 215
	i32 1746316138, ; 276: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 277: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 278: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1760259689, ; 279: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 179
	i32 1763938596, ; 280: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 281: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 282: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 277
	i32 1770582343, ; 283: Microsoft.Extensions.Logging.dll => 0x6988f147 => 200
	i32 1776026572, ; 284: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 285: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 286: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 287: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 316
	i32 1788241197, ; 288: Xamarin.AndroidX.Fragment => 0x6a96652d => 248
	i32 1793755602, ; 289: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 308
	i32 1808609942, ; 290: Xamarin.AndroidX.Loader => 0x6bcd3296 => 262
	i32 1813058853, ; 291: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 293
	i32 1813201214, ; 292: Xamarin.Google.Android.Material => 0x6c13413e => 287
	i32 1818569960, ; 293: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 267
	i32 1818787751, ; 294: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 295: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 296: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 297: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 201
	i32 1842015223, ; 298: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 328
	i32 1847515442, ; 299: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 217
	i32 1853025655, ; 300: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 325
	i32 1858542181, ; 301: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 302: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 303: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 307
	i32 1879696579, ; 304: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 305: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 228
	i32 1888955245, ; 306: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 307: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 308: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 309: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 310: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 311: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 312: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 313: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 274
	i32 1968388702, ; 314: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 183
	i32 1983156543, ; 315: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 294
	i32 1985761444, ; 316: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 219
	i32 2003115576, ; 317: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 304
	i32 2011961780, ; 318: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 319: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 259
	i32 2025202353, ; 320: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 299
	i32 2031763787, ; 321: Xamarin.Android.Glide => 0x791a414b => 216
	i32 2040778495, ; 322: pocketPurge.dll => 0x79a3ceff => 0
	i32 2045470958, ; 323: System.Private.Xml => 0x79eb68ee => 88
	i32 2048278909, ; 324: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 185
	i32 2055257422, ; 325: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 254
	i32 2060060697, ; 326: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 327: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 303
	i32 2070888862, ; 328: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2072397586, ; 329: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 195
	i32 2079903147, ; 330: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 331: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 332: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 333: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 334: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 335: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 336: Microsoft.Maui => 0x80bd55ad => 210
	i32 2169148018, ; 337: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 311
	i32 2181898931, ; 338: Microsoft.Extensions.Options.dll => 0x820d22b3 => 203
	i32 2192057212, ; 339: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 201
	i32 2193016926, ; 340: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 341: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 298
	i32 2201231467, ; 342: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 343: it\Microsoft.Maui.Controls.resources => 0x839595db => 313
	i32 2217644978, ; 344: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 281
	i32 2222056684, ; 345: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2234591261, ; 346: ChartJs.Blazor => 0x8531281d => 174
	i32 2244775296, ; 347: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 263
	i32 2252106437, ; 348: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 349: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 350: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 351: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 184
	i32 2267999099, ; 352: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 218
	i32 2270573516, ; 353: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 307
	i32 2279755925, ; 354: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 270
	i32 2293034957, ; 355: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 356: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 357: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 358: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 317
	i32 2305521784, ; 359: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 360: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 222
	i32 2320631194, ; 361: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 362: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 363: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 364: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 365: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 366: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 183
	i32 2378619854, ; 367: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 368: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 369: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 312
	i32 2401565422, ; 370: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 371: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 245
	i32 2411328690, ; 372: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 177
	i32 2421380589, ; 373: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 374: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 232
	i32 2427813419, ; 375: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 309
	i32 2435356389, ; 376: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 377: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2442556106, ; 378: Microsoft.JSInterop.dll => 0x919672ca => 206
	i32 2454642406, ; 379: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 380: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 381: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 382: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 235
	i32 2471841756, ; 383: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 384: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 385: Microsoft.Maui.Controls => 0x93dba8a1 => 208
	i32 2483903535, ; 386: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 387: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 388: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 389: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 390: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 257
	i32 2522472828, ; 391: Xamarin.Android.Glide.dll => 0x9659e17c => 216
	i32 2537015816, ; 392: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 176
	i32 2538310050, ; 393: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 394: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 310
	i32 2562349572, ; 395: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 396: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 397: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 258
	i32 2581819634, ; 398: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 280
	i32 2585220780, ; 399: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 400: System.Net.Ping => 0x9a20430d => 69
	i32 2585813321, ; 401: Microsoft.AspNetCore.Components.Forms => 0x9a206149 => 178
	i32 2589602615, ; 402: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2592341985, ; 403: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 192
	i32 2593496499, ; 404: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 319
	i32 2605712449, ; 405: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 298
	i32 2615233544, ; 406: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 249
	i32 2616218305, ; 407: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 202
	i32 2617129537, ; 408: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 409: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 410: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 239
	i32 2624644809, ; 411: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 244
	i32 2626831493, ; 412: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 314
	i32 2627185994, ; 413: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 414: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 415: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 253
	i32 2663391936, ; 416: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 218
	i32 2663698177, ; 417: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 418: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 419: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 420: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 421: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2692077919, ; 422: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 180
	i32 2693849962, ; 423: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 424: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 278
	i32 2715334215, ; 425: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 426: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 427: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 428: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 429: Xamarin.AndroidX.Activity => 0xa2e0939b => 220
	i32 2735172069, ; 430: System.Threading.Channels => 0xa30769e5 => 139
	i32 2735631878, ; 431: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 176
	i32 2737747696, ; 432: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 226
	i32 2740948882, ; 433: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 434: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 435: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 320
	i32 2758225723, ; 436: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 209
	i32 2764765095, ; 437: Microsoft.Maui.dll => 0xa4caf7a7 => 210
	i32 2765824710, ; 438: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 439: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 292
	i32 2778768386, ; 440: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 283
	i32 2779977773, ; 441: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 271
	i32 2785988530, ; 442: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 326
	i32 2788224221, ; 443: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 249
	i32 2801831435, ; 444: Microsoft.Maui.Graphics => 0xa7008e0b => 212
	i32 2803228030, ; 445: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 446: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 305
	i32 2810250172, ; 447: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 236
	i32 2819470561, ; 448: System.Xml.dll => 0xa80db4e1 => 163
	i32 2820942282, ; 449: MudBlazor.dll => 0xa82429ca => 213
	i32 2821205001, ; 450: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 451: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 271
	i32 2824502124, ; 452: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 453: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 318
	i32 2833784645, ; 454: Microsoft.AspNetCore.Metadata => 0xa8e81f45 => 182
	i32 2838993487, ; 455: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 260
	i32 2849599387, ; 456: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 457: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 283
	i32 2855708567, ; 458: Xamarin.AndroidX.Transition => 0xaa36a797 => 279
	i32 2861098320, ; 459: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 460: Microsoft.Maui.Essentials => 0xaa8a4878 => 211
	i32 2870099610, ; 461: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 221
	i32 2875164099, ; 462: Jsr305Binding.dll => 0xab5f85c3 => 288
	i32 2875220617, ; 463: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 464: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 247
	i32 2887636118, ; 465: System.Net.dll => 0xac1dd496 => 81
	i32 2892341533, ; 466: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 179
	i32 2899753641, ; 467: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 468: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 469: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 470: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 471: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2911054922, ; 472: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 195
	i32 2916838712, ; 473: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 284
	i32 2919462931, ; 474: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 475: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 223
	i32 2936416060, ; 476: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 477: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 478: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 479: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 480: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2971004615, ; 481: Microsoft.Extensions.Options.ConfigurationExtensions.dll => 0xb115eec7 => 204
	i32 2972252294, ; 482: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 483: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 243
	i32 2987532451, ; 484: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 274
	i32 2996846495, ; 485: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 256
	i32 3016983068, ; 486: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 276
	i32 3020703001, ; 487: Microsoft.Extensions.Diagnostics => 0xb40c4519 => 190
	i32 3023353419, ; 488: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 489: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 251
	i32 3038032645, ; 490: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 335
	i32 3056245963, ; 491: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 273
	i32 3057625584, ; 492: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 264
	i32 3059408633, ; 493: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 494: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3060069052, ; 495: MudBlazor => 0xb664f2bc => 213
	i32 3075834255, ; 496: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 497: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 311
	i32 3090735792, ; 498: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3094727392, ; 499: Blazor-ApexCharts => 0xb875cae0 => 173
	i32 3099732863, ; 500: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 501: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 502: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 503: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 504: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 505: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 506: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 507: GoogleGson.dll => 0xbba64c02 => 175
	i32 3151045023, ; 508: DataModel => 0xbbd1219f => 334
	i32 3159123045, ; 509: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 510: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 511: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 265
	i32 3192346100, ; 512: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 513: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 514: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 515: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 516: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 242
	i32 3220365878, ; 517: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 518: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 519: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 520: Xamarin.AndroidX.CardView => 0xc235e84d => 230
	i32 3265493905, ; 521: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 522: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 523: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 524: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 525: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 526: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 527: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 528: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3304130272, ; 529: ChartJs.Blazor.dll => 0xc4f106e0 => 174
	i32 3305363605, ; 530: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 306
	i32 3316684772, ; 531: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 532: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 240
	i32 3317144872, ; 533: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 534: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 228
	i32 3345895724, ; 535: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 269
	i32 3346324047, ; 536: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 266
	i32 3357674450, ; 537: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 323
	i32 3358260929, ; 538: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 539: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 221
	i32 3362522851, ; 540: Xamarin.AndroidX.Core => 0xc86c06e3 => 237
	i32 3366347497, ; 541: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 542: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 270
	i32 3381016424, ; 543: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 302
	i32 3395150330, ; 544: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 545: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 546: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 241
	i32 3406629867, ; 547: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 193
	i32 3421170118, ; 548: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 185
	i32 3428513518, ; 549: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 188
	i32 3429136800, ; 550: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 551: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 552: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 244
	i32 3445260447, ; 553: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 554: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 207
	i32 3463511458, ; 555: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 310
	i32 3464190856, ; 556: Microsoft.AspNetCore.Components.Forms.dll => 0xce7b5b88 => 178
	i32 3471940407, ; 557: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 558: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 559: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 323
	i32 3484440000, ; 560: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 322
	i32 3485117614, ; 561: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 562: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 563: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 233
	i32 3500000672, ; 564: Microsoft.JSInterop => 0xd09dc5a0 => 206
	i32 3509114376, ; 565: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 566: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 567: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 568: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 569: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 570: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 571: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 330
	i32 3592435036, ; 572: Microsoft.Extensions.Localization.Abstractions => 0xd620355c => 199
	i32 3597029428, ; 573: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 219
	i32 3598340787, ; 574: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 575: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 576: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 577: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 268
	i32 3633644679, ; 578: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 223
	i32 3638274909, ; 579: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 580: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 254
	i32 3643446276, ; 581: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 327
	i32 3643854240, ; 582: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 265
	i32 3645089577, ; 583: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 584: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 184
	i32 3660523487, ; 585: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 586: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 587: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 229
	i32 3684561358, ; 588: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 233
	i32 3697841164, ; 589: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 332
	i32 3700866549, ; 590: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 591: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 238
	i32 3716563718, ; 592: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 593: Xamarin.AndroidX.Annotation => 0xdda814c6 => 222
	i32 3722202641, ; 594: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 187
	i32 3724971120, ; 595: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 264
	i32 3732100267, ; 596: System.Net.NameResolution => 0xde7354ab => 67
	i32 3732214720, ; 597: Microsoft.AspNetCore.Metadata.dll => 0xde7513c0 => 182
	i32 3737834244, ; 598: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 599: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 600: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3758424670, ; 601: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 186
	i32 3776403777, ; 602: Microsoft.Extensions.Localization.Abstractions.dll => 0xe1175941 => 199
	i32 3786282454, ; 603: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 231
	i32 3792276235, ; 604: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 605: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 207
	i32 3802395368, ; 606: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 607: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 608: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 609: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 610: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 189
	i32 3844307129, ; 611: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 612: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 613: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 614: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 615: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 616: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 617: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 279
	i32 3888767677, ; 618: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 269
	i32 3889960447, ; 619: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 331
	i32 3896106733, ; 620: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 621: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 237
	i32 3898971068, ; 622: Microsoft.Extensions.Localization.dll => 0xe86593bc => 198
	i32 3901907137, ; 623: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 624: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 625: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 282
	i32 3928044579, ; 626: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 627: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 628: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 267
	i32 3945713374, ; 629: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 630: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3954195687, ; 631: Microsoft.Extensions.Localization => 0xebb03ce7 => 198
	i32 3955647286, ; 632: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 225
	i32 3959773229, ; 633: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 256
	i32 3980434154, ; 634: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 326
	i32 3987592930, ; 635: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 308
	i32 4003436829, ; 636: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 637: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 224
	i32 4023392905, ; 638: System.IO.Pipelines => 0xefd01a89 => 215
	i32 4025784931, ; 639: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 640: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 209
	i32 4054681211, ; 641: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 642: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 643: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 644: Microsoft.Maui.Essentials.dll => 0xf40add04 => 211
	i32 4099507663, ; 645: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 646: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 647: Xamarin.AndroidX.Emoji2 => 0xf479582c => 245
	i32 4102112229, ; 648: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 321
	i32 4125707920, ; 649: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 316
	i32 4126470640, ; 650: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 188
	i32 4127667938, ; 651: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 652: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 653: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 654: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 328
	i32 4151237749, ; 655: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 656: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 657: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 658: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 659: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 660: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 261
	i32 4185676441, ; 661: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 662: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 663: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4256097574, ; 664: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 238
	i32 4258378803, ; 665: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 260
	i32 4260525087, ; 666: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 667: Microsoft.Maui.Controls.dll => 0xfea12dee => 208
	i32 4274976490, ; 668: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 669: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 261
	i32 4294648842, ; 670: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 194
	i32 4294763496 ; 671: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 247
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [672 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 257, ; 3
	i32 291, ; 4
	i32 48, ; 5
	i32 214, ; 6
	i32 80, ; 7
	i32 145, ; 8
	i32 30, ; 9
	i32 332, ; 10
	i32 124, ; 11
	i32 212, ; 12
	i32 102, ; 13
	i32 191, ; 14
	i32 275, ; 15
	i32 107, ; 16
	i32 275, ; 17
	i32 139, ; 18
	i32 295, ; 19
	i32 77, ; 20
	i32 124, ; 21
	i32 13, ; 22
	i32 231, ; 23
	i32 132, ; 24
	i32 277, ; 25
	i32 151, ; 26
	i32 329, ; 27
	i32 330, ; 28
	i32 18, ; 29
	i32 229, ; 30
	i32 26, ; 31
	i32 190, ; 32
	i32 251, ; 33
	i32 1, ; 34
	i32 59, ; 35
	i32 42, ; 36
	i32 91, ; 37
	i32 177, ; 38
	i32 234, ; 39
	i32 147, ; 40
	i32 253, ; 41
	i32 250, ; 42
	i32 301, ; 43
	i32 54, ; 44
	i32 197, ; 45
	i32 69, ; 46
	i32 329, ; 47
	i32 220, ; 48
	i32 83, ; 49
	i32 314, ; 50
	i32 252, ; 51
	i32 313, ; 52
	i32 131, ; 53
	i32 55, ; 54
	i32 149, ; 55
	i32 74, ; 56
	i32 145, ; 57
	i32 62, ; 58
	i32 146, ; 59
	i32 335, ; 60
	i32 165, ; 61
	i32 325, ; 62
	i32 235, ; 63
	i32 12, ; 64
	i32 334, ; 65
	i32 248, ; 66
	i32 125, ; 67
	i32 152, ; 68
	i32 113, ; 69
	i32 173, ; 70
	i32 166, ; 71
	i32 164, ; 72
	i32 250, ; 73
	i32 263, ; 74
	i32 84, ; 75
	i32 312, ; 76
	i32 306, ; 77
	i32 205, ; 78
	i32 150, ; 79
	i32 295, ; 80
	i32 60, ; 81
	i32 200, ; 82
	i32 51, ; 83
	i32 103, ; 84
	i32 114, ; 85
	i32 40, ; 86
	i32 288, ; 87
	i32 286, ; 88
	i32 194, ; 89
	i32 120, ; 90
	i32 320, ; 91
	i32 52, ; 92
	i32 44, ; 93
	i32 119, ; 94
	i32 240, ; 95
	i32 318, ; 96
	i32 246, ; 97
	i32 81, ; 98
	i32 136, ; 99
	i32 282, ; 100
	i32 227, ; 101
	i32 8, ; 102
	i32 73, ; 103
	i32 300, ; 104
	i32 155, ; 105
	i32 297, ; 106
	i32 154, ; 107
	i32 92, ; 108
	i32 292, ; 109
	i32 45, ; 110
	i32 315, ; 111
	i32 303, ; 112
	i32 296, ; 113
	i32 109, ; 114
	i32 204, ; 115
	i32 129, ; 116
	i32 25, ; 117
	i32 217, ; 118
	i32 72, ; 119
	i32 55, ; 120
	i32 46, ; 121
	i32 324, ; 122
	i32 203, ; 123
	i32 241, ; 124
	i32 181, ; 125
	i32 22, ; 126
	i32 255, ; 127
	i32 86, ; 128
	i32 43, ; 129
	i32 160, ; 130
	i32 71, ; 131
	i32 268, ; 132
	i32 3, ; 133
	i32 42, ; 134
	i32 63, ; 135
	i32 16, ; 136
	i32 53, ; 137
	i32 327, ; 138
	i32 291, ; 139
	i32 105, ; 140
	i32 214, ; 141
	i32 296, ; 142
	i32 289, ; 143
	i32 252, ; 144
	i32 34, ; 145
	i32 158, ; 146
	i32 85, ; 147
	i32 32, ; 148
	i32 12, ; 149
	i32 51, ; 150
	i32 196, ; 151
	i32 56, ; 152
	i32 272, ; 153
	i32 36, ; 154
	i32 189, ; 155
	i32 302, ; 156
	i32 290, ; 157
	i32 225, ; 158
	i32 35, ; 159
	i32 58, ; 160
	i32 191, ; 161
	i32 259, ; 162
	i32 175, ; 163
	i32 17, ; 164
	i32 293, ; 165
	i32 164, ; 166
	i32 333, ; 167
	i32 186, ; 168
	i32 315, ; 169
	i32 258, ; 170
	i32 202, ; 171
	i32 285, ; 172
	i32 321, ; 173
	i32 153, ; 174
	i32 192, ; 175
	i32 281, ; 176
	i32 266, ; 177
	i32 319, ; 178
	i32 227, ; 179
	i32 29, ; 180
	i32 52, ; 181
	i32 317, ; 182
	i32 286, ; 183
	i32 5, ; 184
	i32 301, ; 185
	i32 276, ; 186
	i32 280, ; 187
	i32 232, ; 188
	i32 297, ; 189
	i32 224, ; 190
	i32 243, ; 191
	i32 333, ; 192
	i32 85, ; 193
	i32 285, ; 194
	i32 61, ; 195
	i32 112, ; 196
	i32 57, ; 197
	i32 331, ; 198
	i32 272, ; 199
	i32 99, ; 200
	i32 19, ; 201
	i32 236, ; 202
	i32 111, ; 203
	i32 101, ; 204
	i32 102, ; 205
	i32 299, ; 206
	i32 104, ; 207
	i32 289, ; 208
	i32 71, ; 209
	i32 38, ; 210
	i32 32, ; 211
	i32 193, ; 212
	i32 103, ; 213
	i32 73, ; 214
	i32 305, ; 215
	i32 9, ; 216
	i32 123, ; 217
	i32 46, ; 218
	i32 226, ; 219
	i32 205, ; 220
	i32 9, ; 221
	i32 43, ; 222
	i32 4, ; 223
	i32 273, ; 224
	i32 309, ; 225
	i32 197, ; 226
	i32 304, ; 227
	i32 196, ; 228
	i32 31, ; 229
	i32 138, ; 230
	i32 92, ; 231
	i32 181, ; 232
	i32 93, ; 233
	i32 324, ; 234
	i32 49, ; 235
	i32 141, ; 236
	i32 112, ; 237
	i32 140, ; 238
	i32 242, ; 239
	i32 115, ; 240
	i32 290, ; 241
	i32 157, ; 242
	i32 76, ; 243
	i32 79, ; 244
	i32 262, ; 245
	i32 37, ; 246
	i32 284, ; 247
	i32 187, ; 248
	i32 246, ; 249
	i32 239, ; 250
	i32 64, ; 251
	i32 138, ; 252
	i32 15, ; 253
	i32 180, ; 254
	i32 116, ; 255
	i32 278, ; 256
	i32 287, ; 257
	i32 234, ; 258
	i32 48, ; 259
	i32 70, ; 260
	i32 80, ; 261
	i32 126, ; 262
	i32 94, ; 263
	i32 121, ; 264
	i32 294, ; 265
	i32 26, ; 266
	i32 255, ; 267
	i32 97, ; 268
	i32 0, ; 269
	i32 28, ; 270
	i32 230, ; 271
	i32 322, ; 272
	i32 300, ; 273
	i32 149, ; 274
	i32 215, ; 275
	i32 169, ; 276
	i32 4, ; 277
	i32 98, ; 278
	i32 179, ; 279
	i32 33, ; 280
	i32 93, ; 281
	i32 277, ; 282
	i32 200, ; 283
	i32 21, ; 284
	i32 41, ; 285
	i32 170, ; 286
	i32 316, ; 287
	i32 248, ; 288
	i32 308, ; 289
	i32 262, ; 290
	i32 293, ; 291
	i32 287, ; 292
	i32 267, ; 293
	i32 2, ; 294
	i32 134, ; 295
	i32 111, ; 296
	i32 201, ; 297
	i32 328, ; 298
	i32 217, ; 299
	i32 325, ; 300
	i32 58, ; 301
	i32 95, ; 302
	i32 307, ; 303
	i32 39, ; 304
	i32 228, ; 305
	i32 25, ; 306
	i32 94, ; 307
	i32 89, ; 308
	i32 99, ; 309
	i32 10, ; 310
	i32 87, ; 311
	i32 100, ; 312
	i32 274, ; 313
	i32 183, ; 314
	i32 294, ; 315
	i32 219, ; 316
	i32 304, ; 317
	i32 7, ; 318
	i32 259, ; 319
	i32 299, ; 320
	i32 216, ; 321
	i32 0, ; 322
	i32 88, ; 323
	i32 185, ; 324
	i32 254, ; 325
	i32 154, ; 326
	i32 303, ; 327
	i32 33, ; 328
	i32 195, ; 329
	i32 116, ; 330
	i32 82, ; 331
	i32 20, ; 332
	i32 11, ; 333
	i32 162, ; 334
	i32 3, ; 335
	i32 210, ; 336
	i32 311, ; 337
	i32 203, ; 338
	i32 201, ; 339
	i32 84, ; 340
	i32 298, ; 341
	i32 64, ; 342
	i32 313, ; 343
	i32 281, ; 344
	i32 143, ; 345
	i32 174, ; 346
	i32 263, ; 347
	i32 157, ; 348
	i32 41, ; 349
	i32 117, ; 350
	i32 184, ; 351
	i32 218, ; 352
	i32 307, ; 353
	i32 270, ; 354
	i32 131, ; 355
	i32 75, ; 356
	i32 66, ; 357
	i32 317, ; 358
	i32 172, ; 359
	i32 222, ; 360
	i32 143, ; 361
	i32 106, ; 362
	i32 151, ; 363
	i32 70, ; 364
	i32 156, ; 365
	i32 183, ; 366
	i32 121, ; 367
	i32 127, ; 368
	i32 312, ; 369
	i32 152, ; 370
	i32 245, ; 371
	i32 177, ; 372
	i32 141, ; 373
	i32 232, ; 374
	i32 309, ; 375
	i32 20, ; 376
	i32 14, ; 377
	i32 206, ; 378
	i32 135, ; 379
	i32 75, ; 380
	i32 59, ; 381
	i32 235, ; 382
	i32 167, ; 383
	i32 168, ; 384
	i32 208, ; 385
	i32 15, ; 386
	i32 74, ; 387
	i32 6, ; 388
	i32 23, ; 389
	i32 257, ; 390
	i32 216, ; 391
	i32 176, ; 392
	i32 91, ; 393
	i32 310, ; 394
	i32 1, ; 395
	i32 136, ; 396
	i32 258, ; 397
	i32 280, ; 398
	i32 134, ; 399
	i32 69, ; 400
	i32 178, ; 401
	i32 146, ; 402
	i32 192, ; 403
	i32 319, ; 404
	i32 298, ; 405
	i32 249, ; 406
	i32 202, ; 407
	i32 88, ; 408
	i32 96, ; 409
	i32 239, ; 410
	i32 244, ; 411
	i32 314, ; 412
	i32 31, ; 413
	i32 45, ; 414
	i32 253, ; 415
	i32 218, ; 416
	i32 109, ; 417
	i32 158, ; 418
	i32 35, ; 419
	i32 22, ; 420
	i32 114, ; 421
	i32 180, ; 422
	i32 57, ; 423
	i32 278, ; 424
	i32 144, ; 425
	i32 118, ; 426
	i32 120, ; 427
	i32 110, ; 428
	i32 220, ; 429
	i32 139, ; 430
	i32 176, ; 431
	i32 226, ; 432
	i32 54, ; 433
	i32 105, ; 434
	i32 320, ; 435
	i32 209, ; 436
	i32 210, ; 437
	i32 133, ; 438
	i32 292, ; 439
	i32 283, ; 440
	i32 271, ; 441
	i32 326, ; 442
	i32 249, ; 443
	i32 212, ; 444
	i32 159, ; 445
	i32 305, ; 446
	i32 236, ; 447
	i32 163, ; 448
	i32 213, ; 449
	i32 132, ; 450
	i32 271, ; 451
	i32 161, ; 452
	i32 318, ; 453
	i32 182, ; 454
	i32 260, ; 455
	i32 140, ; 456
	i32 283, ; 457
	i32 279, ; 458
	i32 169, ; 459
	i32 211, ; 460
	i32 221, ; 461
	i32 288, ; 462
	i32 40, ; 463
	i32 247, ; 464
	i32 81, ; 465
	i32 179, ; 466
	i32 56, ; 467
	i32 37, ; 468
	i32 97, ; 469
	i32 166, ; 470
	i32 172, ; 471
	i32 195, ; 472
	i32 284, ; 473
	i32 82, ; 474
	i32 223, ; 475
	i32 98, ; 476
	i32 30, ; 477
	i32 159, ; 478
	i32 18, ; 479
	i32 127, ; 480
	i32 204, ; 481
	i32 119, ; 482
	i32 243, ; 483
	i32 274, ; 484
	i32 256, ; 485
	i32 276, ; 486
	i32 190, ; 487
	i32 165, ; 488
	i32 251, ; 489
	i32 335, ; 490
	i32 273, ; 491
	i32 264, ; 492
	i32 170, ; 493
	i32 16, ; 494
	i32 213, ; 495
	i32 144, ; 496
	i32 311, ; 497
	i32 125, ; 498
	i32 173, ; 499
	i32 118, ; 500
	i32 38, ; 501
	i32 115, ; 502
	i32 47, ; 503
	i32 142, ; 504
	i32 117, ; 505
	i32 34, ; 506
	i32 175, ; 507
	i32 334, ; 508
	i32 95, ; 509
	i32 53, ; 510
	i32 265, ; 511
	i32 129, ; 512
	i32 153, ; 513
	i32 24, ; 514
	i32 161, ; 515
	i32 242, ; 516
	i32 148, ; 517
	i32 104, ; 518
	i32 89, ; 519
	i32 230, ; 520
	i32 60, ; 521
	i32 142, ; 522
	i32 100, ; 523
	i32 5, ; 524
	i32 13, ; 525
	i32 122, ; 526
	i32 135, ; 527
	i32 28, ; 528
	i32 174, ; 529
	i32 306, ; 530
	i32 72, ; 531
	i32 240, ; 532
	i32 24, ; 533
	i32 228, ; 534
	i32 269, ; 535
	i32 266, ; 536
	i32 323, ; 537
	i32 137, ; 538
	i32 221, ; 539
	i32 237, ; 540
	i32 168, ; 541
	i32 270, ; 542
	i32 302, ; 543
	i32 101, ; 544
	i32 123, ; 545
	i32 241, ; 546
	i32 193, ; 547
	i32 185, ; 548
	i32 188, ; 549
	i32 163, ; 550
	i32 167, ; 551
	i32 244, ; 552
	i32 39, ; 553
	i32 207, ; 554
	i32 310, ; 555
	i32 178, ; 556
	i32 17, ; 557
	i32 171, ; 558
	i32 323, ; 559
	i32 322, ; 560
	i32 137, ; 561
	i32 150, ; 562
	i32 233, ; 563
	i32 206, ; 564
	i32 155, ; 565
	i32 130, ; 566
	i32 19, ; 567
	i32 65, ; 568
	i32 147, ; 569
	i32 47, ; 570
	i32 330, ; 571
	i32 199, ; 572
	i32 219, ; 573
	i32 79, ; 574
	i32 61, ; 575
	i32 106, ; 576
	i32 268, ; 577
	i32 223, ; 578
	i32 49, ; 579
	i32 254, ; 580
	i32 327, ; 581
	i32 265, ; 582
	i32 14, ; 583
	i32 184, ; 584
	i32 68, ; 585
	i32 171, ; 586
	i32 229, ; 587
	i32 233, ; 588
	i32 332, ; 589
	i32 78, ; 590
	i32 238, ; 591
	i32 108, ; 592
	i32 222, ; 593
	i32 187, ; 594
	i32 264, ; 595
	i32 67, ; 596
	i32 182, ; 597
	i32 63, ; 598
	i32 27, ; 599
	i32 160, ; 600
	i32 186, ; 601
	i32 199, ; 602
	i32 231, ; 603
	i32 10, ; 604
	i32 207, ; 605
	i32 11, ; 606
	i32 78, ; 607
	i32 126, ; 608
	i32 83, ; 609
	i32 189, ; 610
	i32 66, ; 611
	i32 107, ; 612
	i32 65, ; 613
	i32 128, ; 614
	i32 122, ; 615
	i32 77, ; 616
	i32 279, ; 617
	i32 269, ; 618
	i32 331, ; 619
	i32 8, ; 620
	i32 237, ; 621
	i32 198, ; 622
	i32 2, ; 623
	i32 44, ; 624
	i32 282, ; 625
	i32 156, ; 626
	i32 128, ; 627
	i32 267, ; 628
	i32 23, ; 629
	i32 133, ; 630
	i32 198, ; 631
	i32 225, ; 632
	i32 256, ; 633
	i32 326, ; 634
	i32 308, ; 635
	i32 29, ; 636
	i32 224, ; 637
	i32 215, ; 638
	i32 62, ; 639
	i32 209, ; 640
	i32 90, ; 641
	i32 87, ; 642
	i32 148, ; 643
	i32 211, ; 644
	i32 36, ; 645
	i32 86, ; 646
	i32 245, ; 647
	i32 321, ; 648
	i32 316, ; 649
	i32 188, ; 650
	i32 50, ; 651
	i32 6, ; 652
	i32 90, ; 653
	i32 328, ; 654
	i32 21, ; 655
	i32 162, ; 656
	i32 96, ; 657
	i32 50, ; 658
	i32 113, ; 659
	i32 261, ; 660
	i32 130, ; 661
	i32 76, ; 662
	i32 27, ; 663
	i32 238, ; 664
	i32 260, ; 665
	i32 7, ; 666
	i32 208, ; 667
	i32 110, ; 668
	i32 261, ; 669
	i32 194, ; 670
	i32 247 ; 671
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 96b6bb65e8736e45180905177aa343f0e1854ea3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
