.class Lcom/adjust/sdk/scheduler/SingleThreadFutureScheduler$1;
.super Ljava/lang/Object;
.source "SingleThreadFutureScheduler.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/scheduler/SingleThreadFutureScheduler;-><init>(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/scheduler/SingleThreadFutureScheduler;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/scheduler/SingleThreadFutureScheduler;Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/adjust/sdk/scheduler/SingleThreadFutureScheduler$1;->this$0:Lcom/adjust/sdk/scheduler/SingleThreadFutureScheduler;

    iput-object p2, p0, Lcom/adjust/sdk/scheduler/SingleThreadFutureScheduler$1;->val$source:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 2

    .line 22
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/adjust/sdk/scheduler/SingleThreadFutureScheduler$1;->val$source:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "Runnable [%s] rejected from [%s] "

    .line 22
    invoke-interface {p2, p1, v0}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
