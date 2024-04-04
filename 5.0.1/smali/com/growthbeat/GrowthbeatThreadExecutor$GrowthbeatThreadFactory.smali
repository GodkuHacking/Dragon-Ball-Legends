.class Lcom/growthbeat/GrowthbeatThreadExecutor$GrowthbeatThreadFactory;
.super Ljava/lang/Object;
.source "GrowthbeatThreadExecutor.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/growthbeat/GrowthbeatThreadExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GrowthbeatThreadFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/growthbeat/GrowthbeatThreadExecutor$1;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/growthbeat/GrowthbeatThreadExecutor$GrowthbeatThreadFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 50
    new-instance v0, Lcom/growthbeat/GrowthbeatThreadExecutor$GrowthbeatThread;

    invoke-direct {v0, p1}, Lcom/growthbeat/GrowthbeatThreadExecutor$GrowthbeatThread;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
