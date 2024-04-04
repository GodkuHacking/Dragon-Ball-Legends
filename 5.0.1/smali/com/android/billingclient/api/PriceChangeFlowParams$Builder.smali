.class public Lcom/android/billingclient/api/PriceChangeFlowParams$Builder;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@5.2.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/PriceChangeFlowParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private skuDetails:Lcom/android/billingclient/api/SkuDetails;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setSkuDetails(Ljava/lang/String;)Lcom/android/billingclient/api/PriceChangeFlowParams$Builder;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/android/billingclient/api/SkuDetails;

    invoke-direct {v0, p1}, Lcom/android/billingclient/api/SkuDetails;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/billingclient/api/PriceChangeFlowParams$Builder;->skuDetails:Lcom/android/billingclient/api/SkuDetails;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incorrect skuDetails JSON object!"

    .line 2
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public build()Lcom/android/billingclient/api/PriceChangeFlowParams;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/PriceChangeFlowParams$Builder;->skuDetails:Lcom/android/billingclient/api/SkuDetails;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/billingclient/api/PriceChangeFlowParams;

    invoke-direct {v1}, Lcom/android/billingclient/api/PriceChangeFlowParams;-><init>()V

    .line 2
    invoke-static {v1, v0}, Lcom/android/billingclient/api/PriceChangeFlowParams;->-$$Nest$fputskuDetails(Lcom/android/billingclient/api/PriceChangeFlowParams;Lcom/android/billingclient/api/SkuDetails;)V

    return-object v1

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SkuDetails must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/PriceChangeFlowParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/PriceChangeFlowParams$Builder;->skuDetails:Lcom/android/billingclient/api/SkuDetails;

    return-object p0
.end method
