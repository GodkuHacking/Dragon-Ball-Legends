.class Lcom/growthpush/GrowthPush$2$1;
.super Ljava/lang/Object;
.source "GrowthPush.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthpush/GrowthPush$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/growthpush/GrowthPush$2;


# direct methods
.method constructor <init>(Lcom/growthpush/GrowthPush$2;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/growthpush/GrowthPush$2$1;->this$1:Lcom/growthpush/GrowthPush$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 165
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/growthpush/GrowthPush$2$1;->this$1:Lcom/growthpush/GrowthPush$2;

    iget-object v0, v0, Lcom/growthpush/GrowthPush$2;->this$0:Lcom/growthpush/GrowthPush;

    invoke-static {v0}, Lcom/growthpush/GrowthPush;->access$000(Lcom/growthpush/GrowthPush;)Lcom/growthbeat/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetching FCM registration token failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/growthbeat/Logger;->error(Ljava/lang/String;)V

    return-void

    .line 169
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/growthpush/GrowthPush$2$1;->this$1:Lcom/growthpush/GrowthPush$2;

    iget-object v0, v0, Lcom/growthpush/GrowthPush$2;->this$0:Lcom/growthpush/GrowthPush;

    invoke-virtual {v0, p1}, Lcom/growthpush/GrowthPush;->registerClient(Ljava/lang/String;)V

    return-void
.end method
