.class Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler$3;
.super Ljava/lang/Object;
.source "SingleThreadCachedScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;->processQueue(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;

.field final synthetic val$firstRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;Ljava/lang/Runnable;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler$3;->this$0:Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;

    iput-object p2, p0, Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler$3;->val$firstRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler$3;->this$0:Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;

    iget-object v1, p0, Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler$3;->val$firstRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;->access$000(Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;Ljava/lang/Runnable;)V

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler$3;->this$0:Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;

    invoke-static {v0}, Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;->access$100(Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler$3;->this$0:Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;

    invoke-static {v1}, Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;->access$200(Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    monitor-exit v0

    return-void

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler$3;->this$0:Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;

    invoke-static {v1}, Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;->access$100(Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler$3;->this$0:Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;

    invoke-static {v1, v2}, Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;->access$302(Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;Z)Z

    .line 96
    monitor-exit v0

    return-void

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler$3;->this$0:Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;

    invoke-static {v1}, Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;->access$100(Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 99
    iget-object v3, p0, Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler$3;->this$0:Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;

    invoke-static {v3}, Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;->access$100(Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 100
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    iget-object v0, p0, Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler$3;->this$0:Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;

    invoke-static {v0, v1}, Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;->access$000(Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 100
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
