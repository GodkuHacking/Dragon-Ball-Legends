.class public Lcom/unity/purchasing/common/UnityPurchasing;
.super Ljava/lang/Object;
.source "UnityPurchasing.java"

# interfaces
.implements Lcom/unity/purchasing/common/IStoreCallback;


# instance fields
.field private bridge:Lcom/unity/purchasing/common/IUnityCallback;


# direct methods
.method public constructor <init>(Lcom/unity/purchasing/common/IUnityCallback;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/unity/purchasing/common/UnityPurchasing;->bridge:Lcom/unity/purchasing/common/IUnityCallback;

    return-void
.end method

.method private static SerialiseMetadata(Lcom/unity/purchasing/common/ProductMetadata;)Lorg/json/JSONObject;
    .locals 4

    .line 63
    new-instance v0, Lcom/unity/purchasing/common/SaneJSONObject;

    invoke-direct {v0}, Lcom/unity/purchasing/common/SaneJSONObject;-><init>()V

    .line 64
    iget-object v1, p0, Lcom/unity/purchasing/common/ProductMetadata;->isoCurrencyCode:Ljava/lang/String;

    const-string v2, "isoCurrencyCode"

    invoke-virtual {v0, v2, v1}, Lcom/unity/purchasing/common/SaneJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    iget-object v1, p0, Lcom/unity/purchasing/common/ProductMetadata;->localizedDescription:Ljava/lang/String;

    const-string v2, "localizedDescription"

    invoke-virtual {v0, v2, v1}, Lcom/unity/purchasing/common/SaneJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    iget-object v1, p0, Lcom/unity/purchasing/common/ProductMetadata;->localizedPriceString:Ljava/lang/String;

    const-string v2, "localizedPriceString"

    invoke-virtual {v0, v2, v1}, Lcom/unity/purchasing/common/SaneJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    iget-object v1, p0, Lcom/unity/purchasing/common/ProductMetadata;->localizedPrice:Ljava/math/BigDecimal;

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/unity/purchasing/common/ProductMetadata;->localizedPrice:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    :goto_0
    const-string v3, "localizedPrice"

    invoke-virtual {v0, v3, v1, v2}, Lcom/unity/purchasing/common/SaneJSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 68
    iget-object p0, p0, Lcom/unity/purchasing/common/ProductMetadata;->localizedTitle:Ljava/lang/String;

    const-string v1, "localizedTitle"

    invoke-virtual {v0, v1, p0}, Lcom/unity/purchasing/common/SaneJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private static SerialiseProduct(Lcom/unity/purchasing/common/ProductDescription;)Lorg/json/JSONObject;
    .locals 3

    .line 54
    new-instance v0, Lcom/unity/purchasing/common/SaneJSONObject;

    invoke-direct {v0}, Lcom/unity/purchasing/common/SaneJSONObject;-><init>()V

    .line 55
    iget-object v1, p0, Lcom/unity/purchasing/common/ProductDescription;->metadata:Lcom/unity/purchasing/common/ProductMetadata;

    invoke-static {v1}, Lcom/unity/purchasing/common/UnityPurchasing;->SerialiseMetadata(Lcom/unity/purchasing/common/ProductMetadata;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "metadata"

    invoke-virtual {v0, v2, v1}, Lcom/unity/purchasing/common/SaneJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    iget-object v1, p0, Lcom/unity/purchasing/common/ProductDescription;->receipt:Ljava/lang/String;

    const-string v2, "receipt"

    invoke-virtual {v0, v2, v1}, Lcom/unity/purchasing/common/SaneJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    iget-object v1, p0, Lcom/unity/purchasing/common/ProductDescription;->storeSpecificId:Ljava/lang/String;

    const-string v2, "storeSpecificId"

    invoke-virtual {v0, v2, v1}, Lcom/unity/purchasing/common/SaneJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    iget-object p0, p0, Lcom/unity/purchasing/common/ProductDescription;->transactionId:Ljava/lang/String;

    const-string v1, "transactionId"

    invoke-virtual {v0, v1, p0}, Lcom/unity/purchasing/common/SaneJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static SerialiseProducts(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unity/purchasing/common/ProductDescription;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 45
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 46
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity/purchasing/common/ProductDescription;

    .line 47
    invoke-static {v1}, Lcom/unity/purchasing/common/UnityPurchasing;->SerialiseProduct(Lcom/unity/purchasing/common/ProductDescription;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static SerialisePurchaseFailure(Lcom/unity/purchasing/common/PurchaseFailureDescription;)Ljava/lang/String;
    .locals 3

    .line 36
    new-instance v0, Lcom/unity/purchasing/common/SaneJSONObject;

    invoke-direct {v0}, Lcom/unity/purchasing/common/SaneJSONObject;-><init>()V

    .line 37
    iget-object v1, p0, Lcom/unity/purchasing/common/PurchaseFailureDescription;->message:Ljava/lang/String;

    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Lcom/unity/purchasing/common/SaneJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    iget-object v1, p0, Lcom/unity/purchasing/common/PurchaseFailureDescription;->productId:Ljava/lang/String;

    const-string v2, "productId"

    invoke-virtual {v0, v2, v1}, Lcom/unity/purchasing/common/SaneJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    iget-object v1, p0, Lcom/unity/purchasing/common/PurchaseFailureDescription;->reason:Lcom/unity/purchasing/common/PurchaseFailureReason;

    invoke-virtual {v1}, Lcom/unity/purchasing/common/PurchaseFailureReason;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reason"

    invoke-virtual {v0, v2, v1}, Lcom/unity/purchasing/common/SaneJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    iget-object p0, p0, Lcom/unity/purchasing/common/PurchaseFailureDescription;->storeSpecificErrorCode:Ljava/lang/String;

    const-string v1, "storeSpecificErrorCode"

    invoke-virtual {v0, v1, p0}, Lcom/unity/purchasing/common/SaneJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    invoke-virtual {v0}, Lcom/unity/purchasing/common/SaneJSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public OnProductsRetrieved(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unity/purchasing/common/ProductDescription;",
            ">;)V"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/unity/purchasing/common/UnityPurchasing;->bridge:Lcom/unity/purchasing/common/IUnityCallback;

    invoke-static {p1}, Lcom/unity/purchasing/common/UnityPurchasing;->SerialiseProducts(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/unity/purchasing/common/IUnityCallback;->OnProductsRetrieved(Ljava/lang/String;)V

    return-void
.end method

.method public OnPurchaseFailed(Lcom/unity/purchasing/common/PurchaseFailureDescription;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/unity/purchasing/common/UnityPurchasing;->bridge:Lcom/unity/purchasing/common/IUnityCallback;

    invoke-static {p1}, Lcom/unity/purchasing/common/UnityPurchasing;->SerialisePurchaseFailure(Lcom/unity/purchasing/common/PurchaseFailureDescription;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/unity/purchasing/common/IUnityCallback;->OnPurchaseFailed(Ljava/lang/String;)V

    return-void
.end method

.method public OnPurchaseSucceeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/unity/purchasing/common/UnityPurchasing;->bridge:Lcom/unity/purchasing/common/IUnityCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/unity/purchasing/common/IUnityCallback;->OnPurchaseSucceeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnSetupFailed(Lcom/unity/purchasing/common/InitializationFailureReason;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/unity/purchasing/common/UnityPurchasing;->bridge:Lcom/unity/purchasing/common/IUnityCallback;

    invoke-virtual {p1}, Lcom/unity/purchasing/common/InitializationFailureReason;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/unity/purchasing/common/IUnityCallback;->OnSetupFailed(Ljava/lang/String;)V

    return-void
.end method
