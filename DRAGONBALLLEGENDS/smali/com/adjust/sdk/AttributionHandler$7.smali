.class Lcom/adjust/sdk/AttributionHandler$7;
.super Ljava/lang/Object;
.source "AttributionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/AttributionHandler;->onResponseDataCallback(Lcom/adjust/sdk/ResponseData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/AttributionHandler;

.field final synthetic val$responseData:Lcom/adjust/sdk/ResponseData;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/AttributionHandler;Lcom/adjust/sdk/ResponseData;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/adjust/sdk/AttributionHandler$7;->this$0:Lcom/adjust/sdk/AttributionHandler;

    iput-object p2, p0, Lcom/adjust/sdk/AttributionHandler$7;->val$responseData:Lcom/adjust/sdk/ResponseData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler$7;->this$0:Lcom/adjust/sdk/AttributionHandler;

    invoke-static {v0}, Lcom/adjust/sdk/AttributionHandler;->access$300(Lcom/adjust/sdk/AttributionHandler;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/IActivityHandler;

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/adjust/sdk/AttributionHandler$7;->val$responseData:Lcom/adjust/sdk/ResponseData;

    iget-object v1, v1, Lcom/adjust/sdk/ResponseData;->trackingState:Lcom/adjust/sdk/TrackingState;

    sget-object v2, Lcom/adjust/sdk/TrackingState;->OPTED_OUT:Lcom/adjust/sdk/TrackingState;

    if-ne v1, v2, :cond_1

    .line 282
    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->gotOptOutResponse()V

    return-void

    .line 286
    :cond_1
    iget-object v1, p0, Lcom/adjust/sdk/AttributionHandler$7;->val$responseData:Lcom/adjust/sdk/ResponseData;

    instance-of v2, v1, Lcom/adjust/sdk/AttributionResponseData;

    if-nez v2, :cond_2

    return-void

    .line 290
    :cond_2
    iget-object v2, p0, Lcom/adjust/sdk/AttributionHandler$7;->this$0:Lcom/adjust/sdk/AttributionHandler;

    check-cast v1, Lcom/adjust/sdk/AttributionResponseData;

    invoke-static {v2, v0, v1}, Lcom/adjust/sdk/AttributionHandler;->access$600(Lcom/adjust/sdk/AttributionHandler;Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/AttributionResponseData;)V

    return-void
.end method
