.class Lnet/codestage/actk/androidnative/NativeUtils;
.super Ljava/lang/Object;
.source "NativeUtils.java"


# static fields
.field static LogTag:Ljava/lang/String; = "ACTk"

.field private static cachedApplicationContext:Landroid/content/Context;

.field private static final hexArray:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 16
    fill-array-data v0, :array_0

    sput-object v0, Lnet/codestage/actk/androidnative/NativeUtils;->hexArray:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static BytesToHex([B)Ljava/lang/String;
    .locals 6

    .line 20
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 21
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 22
    aget-byte v2, p0, v1

    xor-int/lit16 v2, v2, 0x90

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x2

    .line 23
    sget-object v4, Lnet/codestage/actk/androidnative/NativeUtils;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v2, v2, 0xf

    .line 24
    aget-char v2, v4, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method static ContainsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method static GetApkPath()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 31
    invoke-static {}, Lnet/codestage/actk/androidnative/NativeUtils;->GetApplicationContext()Landroid/content/Context;

    .line 33
    sget-object v0, Lnet/codestage/actk/androidnative/NativeUtils;->cachedApplicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 35
    sget-object v0, Lnet/codestage/actk/androidnative/NativeUtils;->LogTag:Ljava/lang/String;

    const-string v2, "[CodeHashGenerator ERROR] Couldn\'t get Unity context!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 39
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 42
    sget-object v0, Lnet/codestage/actk/androidnative/NativeUtils;->LogTag:Ljava/lang/String;

    const-string v2, "[CodeHashGenerator ERROR] Couldn\'t get package name!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 46
    :cond_1
    sget-object v2, Lnet/codestage/actk/androidnative/NativeUtils;->cachedApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez v2, :cond_2

    .line 49
    sget-object v0, Lnet/codestage/actk/androidnative/NativeUtils;->LogTag:Ljava/lang/String;

    const-string v2, "[CodeHashGenerator ERROR] Couldn\'t get package manager!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    const/4 v3, 0x0

    .line 53
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_3

    .line 56
    sget-object v0, Lnet/codestage/actk/androidnative/NativeUtils;->LogTag:Ljava/lang/String;

    const-string v2, "[CodeHashGenerator ERROR] Couldn\'t get ApplicationInfo!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 60
    :cond_3
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    return-object v0
.end method

.method static GetApplicationContext()Landroid/content/Context;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 73
    sget-object v0, Lnet/codestage/actk/androidnative/NativeUtils;->cachedApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "com.unity3d.player.UnityPlayer"

    .line 76
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 79
    sget-object v0, Lnet/codestage/actk/androidnative/NativeUtils;->LogTag:Ljava/lang/String;

    const-string v2, "[CodeHashGenerator ERROR] Couldn\'t get com.unity3d.player.UnityPlayer class!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    const-string v2, "currentActivity"

    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_2

    .line 86
    sget-object v0, Lnet/codestage/actk/androidnative/NativeUtils;->LogTag:Ljava/lang/String;

    const-string v2, "[CodeHashGenerator ERROR] Couldn\'t get com.unity3d.player.UnityPlayer:currentActivity field!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 90
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_3

    .line 93
    sget-object v0, Lnet/codestage/actk/androidnative/NativeUtils;->LogTag:Ljava/lang/String;

    const-string v2, "[CodeHashGenerator ERROR] Couldn\'t get Activity from com.unity3d.player.UnityPlayer:currentActivity field!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 97
    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lnet/codestage/actk/androidnative/NativeUtils;->cachedApplicationContext:Landroid/content/Context;

    return-object v0
.end method
