.class final Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$Companion;
.super Ljava/lang/Object;
.source "FirebaseSessionsRegistrar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R2\u0010\u0005\u001a&\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u00070\u0007 \u0008*\u0012\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u00070\u0007\u0018\u00010\u00060\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R2\u0010\t\u001a&\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u00070\u0007 \u0008*\u0012\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u00070\u0007\u0018\u00010\u00060\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R2\u0010\n\u001a&\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u000b0\u000b \u0008*\u0012\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u000b0\u000b\u0018\u00010\u00060\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R2\u0010\u000c\u001a&\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\r0\r \u0008*\u0012\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\r0\r\u0018\u00010\u00060\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R2\u0010\u000e\u001a&\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u000f0\u000f \u0008*\u0012\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u000f0\u000f\u0018\u00010\u00060\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R2\u0010\u0010\u001a&\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u00110\u0011 \u0008*\u0012\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u00110\u0011\u0018\u00010\u00060\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$Companion;",
        "",
        "()V",
        "LIBRARY_NAME",
        "",
        "backgroundDispatcher",
        "Lcom/google/firebase/components/Qualified;",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "kotlin.jvm.PlatformType",
        "blockingDispatcher",
        "firebaseApp",
        "Lcom/google/firebase/FirebaseApp;",
        "firebaseInstallationsApi",
        "Lcom/google/firebase/installations/FirebaseInstallationsApi;",
        "sessionsSettings",
        "Lcom/google/firebase/sessions/settings/SessionsSettings;",
        "transportFactory",
        "Lcom/google/android/datatransport/TransportFactory;",
        "com.google.firebase-firebase-sessions"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$Companion;-><init>()V

    return-void
.end method
