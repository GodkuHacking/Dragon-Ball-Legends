.class public Lcom/growthpush/TokenRefreshService;
.super Ljava/lang/Object;
.source "TokenRefreshService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    invoke-static {}, Lcom/growthpush/GrowthPush;->getInstance()Lcom/growthpush/GrowthPush;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthpush/GrowthPush;->getLogger()Lcom/growthbeat/Logger;

    move-result-object v0

    const-string v1, "TokenRefreshService.onTokenRefresh deprecated, use ReceiverService"

    invoke-virtual {v0, v1}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    return-void
.end method
