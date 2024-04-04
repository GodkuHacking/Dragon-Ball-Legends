.class final Lcom/google/firebase/crashlytics/ndk/SessionFiles;
.super Ljava/lang/Object;
.source "SessionFiles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;,
        Lcom/google/firebase/crashlytics/ndk/SessionFiles$NativeCore;
    }
.end annotation


# instance fields
.field public final app:Ljava/io/File;

.field public final binaryImages:Ljava/io/File;

.field public final device:Ljava/io/File;

.field public final metadata:Ljava/io/File;

.field public final nativeCore:Lcom/google/firebase/crashlytics/ndk/SessionFiles$NativeCore;

.field public final os:Ljava/io/File;

.field public final session:Ljava/io/File;


# direct methods
.method private constructor <init>(Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;)V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-static {p1}, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->access$100(Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;)Lcom/google/firebase/crashlytics/ndk/SessionFiles$NativeCore;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/ndk/SessionFiles;->nativeCore:Lcom/google/firebase/crashlytics/ndk/SessionFiles$NativeCore;

    .line 106
    invoke-static {p1}, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->access$200(Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/ndk/SessionFiles;->binaryImages:Ljava/io/File;

    .line 107
    invoke-static {p1}, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->access$300(Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/ndk/SessionFiles;->metadata:Ljava/io/File;

    .line 108
    invoke-static {p1}, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->access$400(Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/ndk/SessionFiles;->session:Ljava/io/File;

    .line 109
    invoke-static {p1}, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->access$500(Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/ndk/SessionFiles;->app:Ljava/io/File;

    .line 110
    invoke-static {p1}, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->access$600(Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/ndk/SessionFiles;->device:Ljava/io/File;

    .line 111
    invoke-static {p1}, Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;->access$700(Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/crashlytics/ndk/SessionFiles;->os:Ljava/io/File;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;Lcom/google/firebase/crashlytics/ndk/SessionFiles$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/ndk/SessionFiles;-><init>(Lcom/google/firebase/crashlytics/ndk/SessionFiles$Builder;)V

    return-void
.end method
