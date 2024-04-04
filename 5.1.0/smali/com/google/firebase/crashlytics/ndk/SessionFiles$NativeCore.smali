.class final Lcom/google/firebase/crashlytics/ndk/SessionFiles$NativeCore;
.super Ljava/lang/Object;
.source "SessionFiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/ndk/SessionFiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NativeCore"
.end annotation


# instance fields
.field public final applicationExitInfo:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo;

.field public final minidump:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/firebase/crashlytics/ndk/SessionFiles$NativeCore;->minidump:Ljava/io/File;

    .line 35
    iput-object p2, p0, Lcom/google/firebase/crashlytics/ndk/SessionFiles$NativeCore;->applicationExitInfo:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo;

    return-void
.end method


# virtual methods
.method hasCore()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/SessionFiles$NativeCore;->minidump:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/SessionFiles$NativeCore;->applicationExitInfo:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
