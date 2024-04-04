.class Lnet/codestage/actk/androidnative/ACTkErrors;
.super Ljava/lang/Object;
.source "ACTkErrors.java"


# static fields
.field static final APKReadError:Ljava/lang/String; = "[CodeHashGenerator ERROR] Can\'t read APK with path: "

.field private static final ErrorPrefix:Ljava/lang/String; = "[CodeHashGenerator ERROR] "

.field static final NoApkFile:Ljava/lang/String; = "[CodeHashGenerator ERROR] Can\'t create file for APK path: "

.field static final NoApkFolder:Ljava/lang/String; = "[CodeHashGenerator ERROR] Can\'t find parent folder of APK file at path: "

.field static final NoApkPath:Ljava/lang/String; = "[CodeHashGenerator ERROR] Can\'t get APK path!"

.field static final NoApplicationInfo:Ljava/lang/String; = "[CodeHashGenerator ERROR] Couldn\'t get ApplicationInfo!"

.field static final NoContext:Ljava/lang/String; = "[CodeHashGenerator ERROR] Couldn\'t get Unity context!"

.field static final NoFilePath:Ljava/lang/String; = "[CodeHashGenerator ERROR] Can\'t get path for file in APK folder!"

.field static final NoFilesInApkFolder:Ljava/lang/String; = "[CodeHashGenerator ERROR] Can\'t get any files in APK folder at path: "

.field static final NoJarEntries:Ljava/lang/String; = "[CodeHashGenerator ERROR] Nothing found in APK JAR!"

.field static final NoPackageManager:Ljava/lang/String; = "[CodeHashGenerator ERROR] Couldn\'t get package manager!"

.field static final NoPackageName:Ljava/lang/String; = "[CodeHashGenerator ERROR] Couldn\'t get package name!"

.field static final NoSHA1Digest:Ljava/lang/String; = "[CodeHashGenerator ERROR] Can\'t get SHA-1 digest instance!"

.field static final NoUnityActivity:Ljava/lang/String; = "[CodeHashGenerator ERROR] Couldn\'t get Activity from com.unity3d.player.UnityPlayer:currentActivity field!"

.field static final NoUnityClass:Ljava/lang/String; = "[CodeHashGenerator ERROR] Couldn\'t get com.unity3d.player.UnityPlayer class!"

.field static final NoUnityField:Ljava/lang/String; = "[CodeHashGenerator ERROR] Couldn\'t get com.unity3d.player.UnityPlayer:currentActivity field!"

.field static final NothingToHash:Ljava/lang/String; = "[CodeHashGenerator ERROR] Nothing to hash!"

.field static final NullJarEntry:Ljava/lang/String; = "[CodeHashGenerator ERROR] Some JAR entry is null!"

.field static final NullJarEntryPath:Ljava/lang/String; = "[CodeHashGenerator ERROR] Some JAR entry has null path!"

.field static final NullJarInputStream:Ljava/lang/String; = "[CodeHashGenerator ERROR] JAR has null input stream for entry with path: "


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static GetText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CodeHashGenerator ERROR] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
