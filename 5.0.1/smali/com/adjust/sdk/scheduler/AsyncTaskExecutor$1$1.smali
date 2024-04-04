.class Lcom/adjust/sdk/scheduler/AsyncTaskExecutor$1$1;
.super Ljava/lang/Object;
.source "AsyncTaskExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/scheduler/AsyncTaskExecutor$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adjust/sdk/scheduler/AsyncTaskExecutor$1;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/scheduler/AsyncTaskExecutor$1;Ljava/lang/Object;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/adjust/sdk/scheduler/AsyncTaskExecutor$1$1;->this$1:Lcom/adjust/sdk/scheduler/AsyncTaskExecutor$1;

    iput-object p2, p0, Lcom/adjust/sdk/scheduler/AsyncTaskExecutor$1$1;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/adjust/sdk/scheduler/AsyncTaskExecutor$1$1;->this$1:Lcom/adjust/sdk/scheduler/AsyncTaskExecutor$1;

    iget-object v0, v0, Lcom/adjust/sdk/scheduler/AsyncTaskExecutor$1;->this$0:Lcom/adjust/sdk/scheduler/AsyncTaskExecutor;

    iget-object v1, p0, Lcom/adjust/sdk/scheduler/AsyncTaskExecutor$1$1;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/scheduler/AsyncTaskExecutor;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
