.class public final Lcom/facebook/internal/AppCall$Companion;
.super Ljava/lang/Object;
.source "AppCall.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/AppCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0008\u001a\u0004\u0018\u00010\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007J\u0012\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0004H\u0002R\"\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/facebook/internal/AppCall$Companion;",
        "",
        "()V",
        "<set-?>",
        "Lcom/facebook/internal/AppCall;",
        "currentPendingCall",
        "getCurrentPendingCall",
        "()Lcom/facebook/internal/AppCall;",
        "finishPendingCall",
        "callId",
        "Ljava/util/UUID;",
        "requestCode",
        "",
        "setCurrentPendingCall",
        "",
        "appCall",
        "facebook-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/internal/AppCall$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$setCurrentPendingCall(Lcom/facebook/internal/AppCall$Companion;Lcom/facebook/internal/AppCall;)Z
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/facebook/internal/AppCall$Companion;->setCurrentPendingCall(Lcom/facebook/internal/AppCall;)Z

    move-result p0

    return p0
.end method

.method private final declared-synchronized setCurrentPendingCall(Lcom/facebook/internal/AppCall;)Z
    .locals 1

    monitor-enter p0

    .line 88
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall$Companion;->getCurrentPendingCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 89
    invoke-static {p1}, Lcom/facebook/internal/AppCall;->access$setCurrentPendingCall$cp(Lcom/facebook/internal/AppCall;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 90
    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized finishPendingCall(Ljava/util/UUID;I)Lcom/facebook/internal/AppCall;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "callId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall$Companion;->getCurrentPendingCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v0}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 79
    invoke-virtual {v0}, Lcom/facebook/internal/AppCall;->getRequestCode()I

    move-result p1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    invoke-direct {p0, v1}, Lcom/facebook/internal/AppCall$Companion;->setCurrentPendingCall(Lcom/facebook/internal/AppCall;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-object v0

    .line 80
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getCurrentPendingCall()Lcom/facebook/internal/AppCall;
    .locals 1

    .line 70
    invoke-static {}, Lcom/facebook/internal/AppCall;->access$getCurrentPendingCall$cp()Lcom/facebook/internal/AppCall;

    move-result-object v0

    return-object v0
.end method
