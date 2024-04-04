.class Lcom/adjust/sdk/scheduler/AsyncTaskExecutor$1;
.super Ljava/lang/Object;
.source "AsyncTaskExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/scheduler/AsyncTaskExecutor;->execute([Ljava/lang/Object;)Lcom/adjust/sdk/scheduler/AsyncTaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/scheduler/AsyncTaskExecutor;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$params:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/scheduler/AsyncTaskExecutor;[Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/adjust/sdk/scheduler/AsyncTaskExecutor$1;->this$0:Lcom/adjust/sdk/scheduler/AsyncTaskExecutor;

    iput-object p2, p0, Lcom/adjust/sdk/scheduler/AsyncTaskExecutor$1;->val$params:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/adjust/sdk/scheduler/AsyncTaskExecutor$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/adjust/sdk/scheduler/AsyncTaskExecutor$1;->this$0:Lcom/adjust/sdk/scheduler/AsyncTaskExecutor;

    iget-object v1, p0, Lcom/adjust/sdk/scheduler/AsyncTaskExecutor$1;->val$params:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/scheduler/AsyncTaskExecutor;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/adjust/sdk/scheduler/AsyncTaskExecutor$1;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/adjust/sdk/scheduler/AsyncTaskExecutor$1$1;

    invoke-direct {v2, p0, v0}, Lcom/adjust/sdk/scheduler/AsyncTaskExecutor$1$1;-><init>(Lcom/adjust/sdk/scheduler/AsyncTaskExecutor$1;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
