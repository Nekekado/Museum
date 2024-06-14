; ModuleID = 'obj\Debug\130\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [246 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 65
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 99
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 8
	i32 39852199, ; 3: Plugin.Permissions => 0x26018a7 => 11
	i32 57263871, ; 4: Xamarin.Forms.Core.dll => 0x369c6ff => 92
	i32 101534019, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 81
	i32 102832730, ; 6: Plugin.SimpleAudioPlayer => 0x6211a5a => 13
	i32 120558881, ; 7: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 81
	i32 134690465, ; 8: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 107
	i32 165246403, ; 9: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 42
	i32 166922606, ; 10: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 30
	i32 182336117, ; 11: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 83
	i32 209399409, ; 12: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 40
	i32 212497893, ; 13: Xamarin.Forms.Maps.Android => 0xcaa75e5 => 93
	i32 230216969, ; 14: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 59
	i32 232815796, ; 15: System.Web.Services => 0xde07cb4 => 120
	i32 261689757, ; 16: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 45
	i32 278686392, ; 17: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 63
	i32 280482487, ; 18: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 57
	i32 318968648, ; 19: Xamarin.AndroidX.Activity.dll => 0x13031348 => 32
	i32 319314094, ; 20: Xamarin.Forms.Maps => 0x130858ae => 94
	i32 321597661, ; 21: System.Numerics => 0x132b30dd => 23
	i32 342366114, ; 22: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 61
	i32 347068432, ; 23: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 17
	i32 385762202, ; 24: System.Memory.dll => 0x16fe439a => 22
	i32 441335492, ; 25: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 44
	i32 442521989, ; 26: Xamarin.Essentials => 0x1a605985 => 91
	i32 450948140, ; 27: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 56
	i32 465846621, ; 28: mscorlib => 0x1bc4415d => 6
	i32 469710990, ; 29: System.dll => 0x1bff388e => 21
	i32 476646585, ; 30: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 57
	i32 486930444, ; 31: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 69
	i32 514659665, ; 32: Xamarin.Android.Support.Compat => 0x1ead1551 => 30
	i32 526420162, ; 33: System.Transactions.dll => 0x1f6088c2 => 115
	i32 527452488, ; 34: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 107
	i32 605376203, ; 35: System.IO.Compression.FileSystem => 0x24154ecb => 118
	i32 627609679, ; 36: Xamarin.AndroidX.CustomView => 0x2568904f => 50
	i32 639843206, ; 37: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 55
	i32 663517072, ; 38: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 88
	i32 666292255, ; 39: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 37
	i32 690569205, ; 40: System.Xml.Linq.dll => 0x29293ff5 => 28
	i32 691348768, ; 41: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 109
	i32 692692150, ; 42: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 29
	i32 700284507, ; 43: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 104
	i32 706467451, ; 44: Museum.Android.dll => 0x2a1bd67b => 0
	i32 720511267, ; 45: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 108
	i32 748832960, ; 46: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 15
	i32 775507847, ; 47: System.IO.Compression => 0x2e394f87 => 117
	i32 809851609, ; 48: System.Drawing.Common.dll => 0x30455ad9 => 112
	i32 843511501, ; 49: Xamarin.AndroidX.Print => 0x3246f6cd => 76
	i32 928116545, ; 50: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 99
	i32 955402788, ; 51: Newtonsoft.Json => 0x38f24a24 => 8
	i32 956575887, ; 52: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 108
	i32 957807352, ; 53: Plugin.CurrentActivity => 0x3916faf8 => 9
	i32 967690846, ; 54: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 61
	i32 974778368, ; 55: FormsViewGroup.dll => 0x3a19f000 => 3
	i32 996170219, ; 56: Plugin.SimpleAudioPlayer.Abstractions => 0x3b6059eb => 12
	i32 1012816738, ; 57: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 80
	i32 1035644815, ; 58: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 36
	i32 1042160112, ; 59: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 96
	i32 1052210849, ; 60: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 66
	i32 1084122840, ; 61: Xamarin.Kotlin.StdLib => 0x409e66d8 => 106
	i32 1098259244, ; 62: System => 0x41761b2c => 21
	i32 1104213451, ; 63: Museum => 0x41d0f5cb => 7
	i32 1137654822, ; 64: Plugin.Permissions.dll => 0x43cf3c26 => 11
	i32 1175144683, ; 65: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 86
	i32 1178241025, ; 66: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 73
	i32 1204270330, ; 67: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 37
	i32 1264511973, ; 68: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 82
	i32 1267360935, ; 69: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 87
	i32 1275534314, ; 70: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 109
	i32 1282958517, ; 71: Plugin.Geolocator => 0x4c7864b5 => 10
	i32 1292207520, ; 72: SQLitePCLRaw.core.dll => 0x4d0585a0 => 16
	i32 1293217323, ; 73: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 52
	i32 1364015309, ; 74: System.IO => 0x514d38cd => 121
	i32 1365406463, ; 75: System.ServiceModel.Internals.dll => 0x516272ff => 111
	i32 1376866003, ; 76: Xamarin.AndroidX.SavedState => 0x52114ed3 => 80
	i32 1395857551, ; 77: Xamarin.AndroidX.Media.dll => 0x5333188f => 70
	i32 1406073936, ; 78: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 46
	i32 1411638395, ; 79: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 25
	i32 1460219004, ; 80: Xamarin.Forms.Xaml => 0x57092c7c => 97
	i32 1462112819, ; 81: System.IO.Compression.dll => 0x57261233 => 117
	i32 1469204771, ; 82: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 35
	i32 1530663695, ; 83: Xamarin.Forms.Maps.dll => 0x5b3c130f => 94
	i32 1574652163, ; 84: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 31
	i32 1582372066, ; 85: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 51
	i32 1592978981, ; 86: System.Runtime.Serialization.dll => 0x5ef2ee25 => 2
	i32 1622152042, ; 87: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 68
	i32 1624863272, ; 88: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 90
	i32 1626988262, ; 89: Plugin.SimpleAudioPlayer.Abstractions.dll => 0x60f9dee6 => 12
	i32 1635184631, ; 90: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 55
	i32 1636350590, ; 91: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 49
	i32 1639515021, ; 92: System.Net.Http.dll => 0x61b9038d => 1
	i32 1657153582, ; 93: System.Runtime => 0x62c6282e => 26
	i32 1658241508, ; 94: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 84
	i32 1658251792, ; 95: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 98
	i32 1670060433, ; 96: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 45
	i32 1698840827, ; 97: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 105
	i32 1711441057, ; 98: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 17
	i32 1729485958, ; 99: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 41
	i32 1766324549, ; 100: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 83
	i32 1776026572, ; 101: System.Core.dll => 0x69dc03cc => 20
	i32 1788241197, ; 102: Xamarin.AndroidX.Fragment => 0x6a96652d => 56
	i32 1808609942, ; 103: Xamarin.AndroidX.Loader => 0x6bcd3296 => 68
	i32 1813058853, ; 104: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 106
	i32 1813201214, ; 105: Xamarin.Google.Android.Material => 0x6c13413e => 98
	i32 1818569960, ; 106: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 74
	i32 1867746548, ; 107: Xamarin.Essentials.dll => 0x6f538cf4 => 91
	i32 1878053835, ; 108: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 97
	i32 1881862856, ; 109: Xamarin.Forms.Maps.Android.dll => 0x702af2c8 => 93
	i32 1885316902, ; 110: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 38
	i32 1908813208, ; 111: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 101
	i32 1919157823, ; 112: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 71
	i32 1983156543, ; 113: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 105
	i32 2011961780, ; 114: System.Buffers.dll => 0x77ec19b4 => 19
	i32 2019465201, ; 115: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 66
	i32 2055257422, ; 116: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 62
	i32 2079903147, ; 117: System.Runtime.dll => 0x7bf8cdab => 26
	i32 2090596640, ; 118: System.Numerics.Vectors => 0x7c9bf920 => 24
	i32 2097448633, ; 119: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 58
	i32 2103459038, ; 120: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 18
	i32 2126786730, ; 121: Xamarin.Forms.Platform.Android => 0x7ec430aa => 95
	i32 2129483829, ; 122: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 100
	i32 2166116741, ; 123: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 31
	i32 2201107256, ; 124: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 110
	i32 2201231467, ; 125: System.Net.Http => 0x8334206b => 1
	i32 2217644978, ; 126: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 86
	i32 2244775296, ; 127: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 69
	i32 2256548716, ; 128: Xamarin.AndroidX.MultiDex => 0x8680336c => 71
	i32 2261435625, ; 129: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 60
	i32 2279755925, ; 130: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 78
	i32 2287417322, ; 131: Plugin.SimpleAudioPlayer.dll => 0x885737ea => 13
	i32 2315684594, ; 132: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 33
	i32 2403452196, ; 133: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 54
	i32 2409053734, ; 134: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 75
	i32 2465273461, ; 135: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 15
	i32 2465532216, ; 136: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 44
	i32 2471841756, ; 137: netstandard.dll => 0x93554fdc => 113
	i32 2475788418, ; 138: Java.Interop.dll => 0x93918882 => 4
	i32 2501346920, ; 139: System.Data.DataSetExtensions => 0x95178668 => 116
	i32 2505896520, ; 140: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 65
	i32 2581819634, ; 141: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 87
	i32 2605712449, ; 142: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 110
	i32 2620871830, ; 143: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 49
	i32 2624644809, ; 144: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 53
	i32 2633051222, ; 145: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 63
	i32 2693849962, ; 146: System.IO.dll => 0xa090e36a => 121
	i32 2701096212, ; 147: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 84
	i32 2732626843, ; 148: Xamarin.AndroidX.Activity => 0xa2e0939b => 32
	i32 2737747696, ; 149: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 35
	i32 2746855259, ; 150: Museum.dll => 0xa3b9af5b => 7
	i32 2766581644, ; 151: Xamarin.Forms.Core => 0xa4e6af8c => 92
	i32 2770495804, ; 152: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 104
	i32 2778768386, ; 153: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 89
	i32 2779977773, ; 154: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 79
	i32 2806986428, ; 155: Plugin.CurrentActivity.dll => 0xa74f36bc => 9
	i32 2810250172, ; 156: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 46
	i32 2819470561, ; 157: System.Xml.dll => 0xa80db4e1 => 27
	i32 2821294376, ; 158: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 79
	i32 2847418871, ; 159: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 100
	i32 2853208004, ; 160: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 89
	i32 2855708567, ; 161: Xamarin.AndroidX.Transition => 0xaa36a797 => 85
	i32 2903344695, ; 162: System.ComponentModel.Composition => 0xad0d8637 => 119
	i32 2905242038, ; 163: mscorlib.dll => 0xad2a79b6 => 6
	i32 2916838712, ; 164: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 90
	i32 2919462931, ; 165: System.Numerics.Vectors.dll => 0xae037813 => 24
	i32 2921128767, ; 166: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 34
	i32 2978675010, ; 167: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 52
	i32 2996846495, ; 168: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 64
	i32 3016983068, ; 169: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 82
	i32 3017076677, ; 170: Xamarin.GooglePlayServices.Maps => 0xb3d4efc5 => 102
	i32 3024354802, ; 171: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 59
	i32 3044182254, ; 172: FormsViewGroup => 0xb57288ee => 3
	i32 3057625584, ; 173: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 72
	i32 3058099980, ; 174: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 103
	i32 3111772706, ; 175: System.Runtime.Serialization => 0xb979e222 => 2
	i32 3126016514, ; 176: Plugin.Geolocator.dll => 0xba533a02 => 10
	i32 3204380047, ; 177: System.Data.dll => 0xbefef58f => 114
	i32 3211777861, ; 178: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 51
	i32 3230466174, ; 179: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 101
	i32 3247949154, ; 180: Mono.Security => 0xc197c562 => 122
	i32 3258312781, ; 181: Xamarin.AndroidX.CardView => 0xc235e84d => 41
	i32 3267021929, ; 182: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 39
	i32 3286872994, ; 183: SQLite-net.dll => 0xc3e9b3a2 => 14
	i32 3317135071, ; 184: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 50
	i32 3317144872, ; 185: System.Data => 0xc5b79d28 => 114
	i32 3340431453, ; 186: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 38
	i32 3345895724, ; 187: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 77
	i32 3346324047, ; 188: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 73
	i32 3353484488, ; 189: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 58
	i32 3360279109, ; 190: SQLitePCLRaw.core => 0xc849ca45 => 16
	i32 3362522851, ; 191: Xamarin.AndroidX.Core => 0xc86c06e3 => 48
	i32 3366347497, ; 192: Java.Interop => 0xc8a662e9 => 4
	i32 3374999561, ; 193: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 78
	i32 3395150330, ; 194: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 25
	i32 3404865022, ; 195: System.ServiceModel.Internals => 0xcaf21dfe => 111
	i32 3429136800, ; 196: System.Xml => 0xcc6479a0 => 27
	i32 3430777524, ; 197: netstandard => 0xcc7d82b4 => 113
	i32 3439690031, ; 198: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 29
	i32 3441283291, ; 199: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 53
	i32 3476120550, ; 200: Mono.Android => 0xcf3163e6 => 5
	i32 3486566296, ; 201: System.Transactions => 0xcfd0c798 => 115
	i32 3493954962, ; 202: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 43
	i32 3501239056, ; 203: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 39
	i32 3509114376, ; 204: System.Xml.Linq => 0xd128d608 => 28
	i32 3536029504, ; 205: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 95
	i32 3567349600, ; 206: System.ComponentModel.Composition.dll => 0xd4a16f60 => 119
	i32 3618140916, ; 207: Xamarin.AndroidX.Preference => 0xd7a872f4 => 75
	i32 3627220390, ; 208: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 76
	i32 3632359727, ; 209: Xamarin.Forms.Platform => 0xd881692f => 96
	i32 3633644679, ; 210: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 34
	i32 3641597786, ; 211: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 62
	i32 3672681054, ; 212: Mono.Android.dll => 0xdae8aa5e => 5
	i32 3676310014, ; 213: System.Web.Services.dll => 0xdb2009fe => 120
	i32 3682565725, ; 214: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 40
	i32 3684561358, ; 215: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 43
	i32 3689375977, ; 216: System.Drawing.Common => 0xdbe768e9 => 112
	i32 3706696989, ; 217: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 47
	i32 3718780102, ; 218: Xamarin.AndroidX.Annotation => 0xdda814c6 => 33
	i32 3724971120, ; 219: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 72
	i32 3754567612, ; 220: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 18
	i32 3758932259, ; 221: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 60
	i32 3786282454, ; 222: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 42
	i32 3822602673, ; 223: Xamarin.AndroidX.Media => 0xe3d849b1 => 70
	i32 3829621856, ; 224: System.Numerics.dll => 0xe4436460 => 23
	i32 3876362041, ; 225: SQLite-net => 0xe70c9739 => 14
	i32 3885922214, ; 226: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 85
	i32 3888767677, ; 227: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 77
	i32 3896760992, ; 228: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 48
	i32 3920810846, ; 229: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 118
	i32 3921031405, ; 230: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 88
	i32 3931092270, ; 231: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 74
	i32 3945713374, ; 232: System.Data.DataSetExtensions.dll => 0xeb2ecede => 116
	i32 3955647286, ; 233: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 36
	i32 3959773229, ; 234: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 64
	i32 3970018735, ; 235: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 103
	i32 4025784931, ; 236: System.Memory => 0xeff49a63 => 22
	i32 4101593132, ; 237: Xamarin.AndroidX.Emoji2 => 0xf479582c => 54
	i32 4105002889, ; 238: Mono.Security.dll => 0xf4ad5f89 => 122
	i32 4151237749, ; 239: System.Core => 0xf76edc75 => 20
	i32 4182413190, ; 240: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 67
	i32 4216123699, ; 241: Museum.Android => 0xfb4cf133 => 0
	i32 4256097574, ; 242: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 47
	i32 4260525087, ; 243: System.Buffers => 0xfdf2741f => 19
	i32 4278134329, ; 244: Xamarin.GooglePlayServices.Maps.dll => 0xfeff2639 => 102
	i32 4292120959 ; 245: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 67
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [246 x i32] [
	i32 65, i32 99, i32 8, i32 11, i32 92, i32 81, i32 13, i32 81, ; 0..7
	i32 107, i32 42, i32 30, i32 83, i32 40, i32 93, i32 59, i32 120, ; 8..15
	i32 45, i32 63, i32 57, i32 32, i32 94, i32 23, i32 61, i32 17, ; 16..23
	i32 22, i32 44, i32 91, i32 56, i32 6, i32 21, i32 57, i32 69, ; 24..31
	i32 30, i32 115, i32 107, i32 118, i32 50, i32 55, i32 88, i32 37, ; 32..39
	i32 28, i32 109, i32 29, i32 104, i32 0, i32 108, i32 15, i32 117, ; 40..47
	i32 112, i32 76, i32 99, i32 8, i32 108, i32 9, i32 61, i32 3, ; 48..55
	i32 12, i32 80, i32 36, i32 96, i32 66, i32 106, i32 21, i32 7, ; 56..63
	i32 11, i32 86, i32 73, i32 37, i32 82, i32 87, i32 109, i32 10, ; 64..71
	i32 16, i32 52, i32 121, i32 111, i32 80, i32 70, i32 46, i32 25, ; 72..79
	i32 97, i32 117, i32 35, i32 94, i32 31, i32 51, i32 2, i32 68, ; 80..87
	i32 90, i32 12, i32 55, i32 49, i32 1, i32 26, i32 84, i32 98, ; 88..95
	i32 45, i32 105, i32 17, i32 41, i32 83, i32 20, i32 56, i32 68, ; 96..103
	i32 106, i32 98, i32 74, i32 91, i32 97, i32 93, i32 38, i32 101, ; 104..111
	i32 71, i32 105, i32 19, i32 66, i32 62, i32 26, i32 24, i32 58, ; 112..119
	i32 18, i32 95, i32 100, i32 31, i32 110, i32 1, i32 86, i32 69, ; 120..127
	i32 71, i32 60, i32 78, i32 13, i32 33, i32 54, i32 75, i32 15, ; 128..135
	i32 44, i32 113, i32 4, i32 116, i32 65, i32 87, i32 110, i32 49, ; 136..143
	i32 53, i32 63, i32 121, i32 84, i32 32, i32 35, i32 7, i32 92, ; 144..151
	i32 104, i32 89, i32 79, i32 9, i32 46, i32 27, i32 79, i32 100, ; 152..159
	i32 89, i32 85, i32 119, i32 6, i32 90, i32 24, i32 34, i32 52, ; 160..167
	i32 64, i32 82, i32 102, i32 59, i32 3, i32 72, i32 103, i32 2, ; 168..175
	i32 10, i32 114, i32 51, i32 101, i32 122, i32 41, i32 39, i32 14, ; 176..183
	i32 50, i32 114, i32 38, i32 77, i32 73, i32 58, i32 16, i32 48, ; 184..191
	i32 4, i32 78, i32 25, i32 111, i32 27, i32 113, i32 29, i32 53, ; 192..199
	i32 5, i32 115, i32 43, i32 39, i32 28, i32 95, i32 119, i32 75, ; 200..207
	i32 76, i32 96, i32 34, i32 62, i32 5, i32 120, i32 40, i32 43, ; 208..215
	i32 112, i32 47, i32 33, i32 72, i32 18, i32 60, i32 42, i32 70, ; 216..223
	i32 23, i32 14, i32 85, i32 77, i32 48, i32 118, i32 88, i32 74, ; 224..231
	i32 116, i32 36, i32 64, i32 103, i32 22, i32 54, i32 122, i32 20, ; 232..239
	i32 67, i32 0, i32 47, i32 19, i32 102, i32 67 ; 240..245
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
