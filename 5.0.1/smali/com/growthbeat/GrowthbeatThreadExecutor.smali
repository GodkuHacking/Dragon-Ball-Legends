.class public Lcom/growthbeat/GrowthbeatThreadExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "GrowthbeatThreadExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/growthbeat/GrowthbeatThreadExecutor$GrowthbeatThread;,
        Lcom/growthbeat/GrowthbeatThreadExecutor$GrowthbeatThreadFactory;
    }
.end annotation


# static fields
.field private static final DEFAULT_THREAD_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Growthbeat"

.field private static final THREAD_NAME:Ljava/lang/String; = "growthbeat-thread"


# instance fields
.field private scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 23
    invoke-direct {p0, v0}, Lcom/growthbeat/GrowthbeatThreadExecutor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 9

    .line 27
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/growthbeat/GrowthbeatThreadExecutor$GrowthbeatThreadFactory;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/growthbeat/GrowthbeatThreadExecutor$GrowthbeatThreadFactory;-><init>(Lcom/growthbeat/GrowthbeatThreadExecutor$1;)V

    const-wide/16 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 28
    new-instance v0, Lcom/growthbeat/GrowthbeatThreadExecutor$GrowthbeatThreadFactory;

    invoke-direct {v0, v8}, Lcom/growthbeat/GrowthbeatThreadExecutor$GrowthbeatThreadFactory;-><init>(Lcom/growthbeat/GrowthbeatThreadExecutor$1;)V

    invoke-static {p1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/growthbeat/GrowthbeatThreadExecutor;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 9

    .line 32
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/growthbeat/GrowthbeatThreadExecutor$GrowthbeatThreadFactory;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/growthbeat/GrowthbeatThreadExecutor$GrowthbeatThreadFactory;-><init>(Lcom/growthbeat/GrowthbeatThreadExecutor$1;)V

    const-wide/16 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 33
    new-instance p1, Lcom/growthbeat/GrowthbeatThreadExecutor$GrowthbeatThreadFactory;

    invoke-direct {p1, v8}, Lcom/growthbeat/GrowthbeatThreadExecutor$GrowthbeatThreadFactory;-><init>(Lcom/growthbeat/GrowthbeatThreadExecutor$1;)V

    invoke-static {p2, p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/growthbeat/GrowthbeatThreadExecutor;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public executeScheduledTimeout(Ljava/lang/Runnable;ILjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 37
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/growthbeat/GrowthbeatThreadExecutor;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/growthbeat/GrowthbeatThreadExecutor$1;

    invoke-direct {v1, p0, p1}, Lcom/growthbeat/GrowthbeatThreadExecutor$1;-><init>(Lcom/growthbeat/GrowthbeatThreadExecutor;Ljava/util/concurrent/Future;)V

    int-to-long p1, p2

    invoke-interface {v0, v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
