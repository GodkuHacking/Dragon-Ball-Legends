.class Lcom/growthbeat/GrowthbeatThreadExecutor$1;
.super Ljava/lang/Object;
.source "GrowthbeatThreadExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthbeat/GrowthbeatThreadExecutor;->executeScheduledTimeout(Ljava/lang/Runnable;ILjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/growthbeat/GrowthbeatThreadExecutor;

.field final synthetic val$task:Ljava/util/concurrent/Future;


# direct methods
.method constructor <init>(Lcom/growthbeat/GrowthbeatThreadExecutor;Ljava/util/concurrent/Future;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/growthbeat/GrowthbeatThreadExecutor$1;->this$0:Lcom/growthbeat/GrowthbeatThreadExecutor;

    iput-object p2, p0, Lcom/growthbeat/GrowthbeatThreadExecutor$1;->val$task:Ljava/util/concurrent/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/growthbeat/GrowthbeatThreadExecutor$1;->val$task:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method
