.class Lcom/adjust/sdk/network/ActivityPackageSender$1;
.super Ljava/lang/Object;
.source "ActivityPackageSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/network/ActivityPackageSender;->sendActivityPackage(Lcom/adjust/sdk/ActivityPackage;Ljava/util/Map;Lcom/adjust/sdk/network/IActivityPackageSender$ResponseDataCallbackSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/network/ActivityPackageSender;

.field final synthetic val$activityPackage:Lcom/adjust/sdk/ActivityPackage;

.field final synthetic val$responseCallback:Lcom/adjust/sdk/network/IActivityPackageSender$ResponseDataCallbackSubscriber;

.field final synthetic val$sendingParameters:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/network/ActivityPackageSender;Lcom/adjust/sdk/network/IActivityPackageSender$ResponseDataCallbackSubscriber;Lcom/adjust/sdk/ActivityPackage;Ljava/util/Map;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/adjust/sdk/network/ActivityPackageSender$1;->this$0:Lcom/adjust/sdk/network/ActivityPackageSender;

    iput-object p2, p0, Lcom/adjust/sdk/network/ActivityPackageSender$1;->val$responseCallback:Lcom/adjust/sdk/network/IActivityPackageSender$ResponseDataCallbackSubscriber;

    iput-object p3, p0, Lcom/adjust/sdk/network/ActivityPackageSender$1;->val$activityPackage:Lcom/adjust/sdk/ActivityPackage;

    iput-object p4, p0, Lcom/adjust/sdk/network/ActivityPackageSender$1;->val$sendingParameters:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/adjust/sdk/network/ActivityPackageSender$1;->val$responseCallback:Lcom/adjust/sdk/network/IActivityPackageSender$ResponseDataCallbackSubscriber;

    iget-object v1, p0, Lcom/adjust/sdk/network/ActivityPackageSender$1;->this$0:Lcom/adjust/sdk/network/ActivityPackageSender;

    iget-object v2, p0, Lcom/adjust/sdk/network/ActivityPackageSender$1;->val$activityPackage:Lcom/adjust/sdk/ActivityPackage;

    iget-object v3, p0, Lcom/adjust/sdk/network/ActivityPackageSender$1;->val$sendingParameters:Ljava/util/Map;

    .line 86
    invoke-virtual {v1, v2, v3}, Lcom/adjust/sdk/network/ActivityPackageSender;->sendActivityPackageSync(Lcom/adjust/sdk/ActivityPackage;Ljava/util/Map;)Lcom/adjust/sdk/ResponseData;

    move-result-object v1

    .line 85
    invoke-interface {v0, v1}, Lcom/adjust/sdk/network/IActivityPackageSender$ResponseDataCallbackSubscriber;->onResponseDataCallback(Lcom/adjust/sdk/ResponseData;)V

    return-void
.end method
