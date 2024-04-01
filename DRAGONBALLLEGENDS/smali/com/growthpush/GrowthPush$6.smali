.class Lcom/growthpush/GrowthPush$6;
.super Ljava/lang/Object;
.source "GrowthPush.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthpush/GrowthPush;->setAdvertisingId()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/growthpush/GrowthPush;


# direct methods
.method constructor <init>(Lcom/growthpush/GrowthPush;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/growthpush/GrowthPush$6;->this$0:Lcom/growthpush/GrowthPush;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 404
    :try_start_0
    invoke-static {}, Lcom/growthbeat/utils/DeviceUtils;->getAdvertisingId()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 406
    iget-object v1, p0, Lcom/growthpush/GrowthPush$6;->this$0:Lcom/growthpush/GrowthPush;

    const-string v2, "AdvertisingID"

    invoke-virtual {v1, v2, v0}, Lcom/growthpush/GrowthPush;->setTag(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 408
    iget-object v1, p0, Lcom/growthpush/GrowthPush$6;->this$0:Lcom/growthpush/GrowthPush;

    invoke-static {v1}, Lcom/growthpush/GrowthPush;->access$000(Lcom/growthpush/GrowthPush;)Lcom/growthbeat/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get advertisingId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/growthbeat/Logger;->warning(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
