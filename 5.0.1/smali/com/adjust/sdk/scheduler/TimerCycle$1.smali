.class Lcom/adjust/sdk/scheduler/TimerCycle$1;
.super Ljava/lang/Object;
.source "TimerCycle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/scheduler/TimerCycle;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/scheduler/TimerCycle;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/scheduler/TimerCycle;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/adjust/sdk/scheduler/TimerCycle$1;->this$0:Lcom/adjust/sdk/scheduler/TimerCycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/adjust/sdk/scheduler/TimerCycle$1;->this$0:Lcom/adjust/sdk/scheduler/TimerCycle;

    invoke-static {v0}, Lcom/adjust/sdk/scheduler/TimerCycle;->access$100(Lcom/adjust/sdk/scheduler/TimerCycle;)Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/adjust/sdk/scheduler/TimerCycle$1;->this$0:Lcom/adjust/sdk/scheduler/TimerCycle;

    invoke-static {v2}, Lcom/adjust/sdk/scheduler/TimerCycle;->access$000(Lcom/adjust/sdk/scheduler/TimerCycle;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%s fired"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/adjust/sdk/scheduler/TimerCycle$1;->this$0:Lcom/adjust/sdk/scheduler/TimerCycle;

    invoke-static {v0}, Lcom/adjust/sdk/scheduler/TimerCycle;->access$200(Lcom/adjust/sdk/scheduler/TimerCycle;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
