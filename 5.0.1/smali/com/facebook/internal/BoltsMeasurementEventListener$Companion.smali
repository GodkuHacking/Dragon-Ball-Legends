.class public final Lcom/facebook/internal/BoltsMeasurementEventListener$Companion;
.super Ljava/lang/Object;
.source "BoltsMeasurementEventListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/BoltsMeasurementEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u00020\u00048\u0000X\u0081D\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0008\u0010\u0002\u001a\u0004\u0008\t\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/facebook/internal/BoltsMeasurementEventListener$Companion;",
        "",
        "()V",
        "BOLTS_MEASUREMENT_EVENT_PREFIX",
        "",
        "MEASUREMENT_EVENT_ARGS_KEY",
        "MEASUREMENT_EVENT_NAME_KEY",
        "MEASUREMENT_EVENT_NOTIFICATION_NAME",
        "getMEASUREMENT_EVENT_NOTIFICATION_NAME$facebook_core_release$annotations",
        "getMEASUREMENT_EVENT_NOTIFICATION_NAME$facebook_core_release",
        "()Ljava/lang/String;",
        "singleton",
        "Lcom/facebook/internal/BoltsMeasurementEventListener;",
        "getInstance",
        "context",
        "Landroid/content/Context;",
        "facebook-core_release"
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

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/internal/BoltsMeasurementEventListener$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getMEASUREMENT_EVENT_NOTIFICATION_NAME$facebook_core_release$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;)Lcom/facebook/internal/BoltsMeasurementEventListener;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/facebook/internal/BoltsMeasurementEventListener;->access$getSingleton$cp()Lcom/facebook/internal/BoltsMeasurementEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lcom/facebook/internal/BoltsMeasurementEventListener;->access$getSingleton$cp()Lcom/facebook/internal/BoltsMeasurementEventListener;

    move-result-object p1

    return-object p1

    .line 55
    :cond_0
    new-instance v0, Lcom/facebook/internal/BoltsMeasurementEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/internal/BoltsMeasurementEventListener;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 56
    invoke-static {v0}, Lcom/facebook/internal/BoltsMeasurementEventListener;->access$open(Lcom/facebook/internal/BoltsMeasurementEventListener;)V

    .line 57
    invoke-static {v0}, Lcom/facebook/internal/BoltsMeasurementEventListener;->access$setSingleton$cp(Lcom/facebook/internal/BoltsMeasurementEventListener;)V

    .line 58
    invoke-static {}, Lcom/facebook/internal/BoltsMeasurementEventListener;->access$getSingleton$cp()Lcom/facebook/internal/BoltsMeasurementEventListener;

    move-result-object p1

    return-object p1
.end method

.method public final getMEASUREMENT_EVENT_NOTIFICATION_NAME$facebook_core_release()Ljava/lang/String;
    .locals 1

    .line 45
    invoke-static {}, Lcom/facebook/internal/BoltsMeasurementEventListener;->access$getMEASUREMENT_EVENT_NOTIFICATION_NAME$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
