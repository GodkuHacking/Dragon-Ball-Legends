.class public Lcom/adjust/sdk/AdjustPlayStoreSubscription;
.super Ljava/lang/Object;
.source "AdjustPlayStoreSubscription.java"


# static fields
.field private static logger:Lcom/adjust/sdk/ILogger;


# instance fields
.field private billingStore:Ljava/lang/String;

.field private callbackParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currency:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private partnerParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private price:J

.field private purchaseTime:J

.field private purchaseToken:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private sku:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    sput-object v0, Lcom/adjust/sdk/AdjustPlayStoreSubscription;->logger:Lcom/adjust/sdk/ILogger;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/adjust/sdk/AdjustPlayStoreSubscription;->price:J

    .line 27
    iput-object p3, p0, Lcom/adjust/sdk/AdjustPlayStoreSubscription;->currency:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/adjust/sdk/AdjustPlayStoreSubscription;->sku:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/adjust/sdk/AdjustPlayStoreSubscription;->orderId:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/adjust/sdk/AdjustPlayStoreSubscription;->signature:Ljava/lang/String;

    .line 31
    iput-object p7, p0, Lcom/adjust/sdk/AdjustPlayStoreSubscription;->purchaseToken:Ljava/lang/String;

    const-wide/16 p1, -0x1

    .line 34
    iput-wide p1, p0, Lcom/adjust/sdk/AdjustPlayStoreSubscription;->purchaseTime:J

    const-string p1, "GooglePlay"

    .line 35
    iput-object p1, p0, Lcom/adjust/sdk/AdjustPlayStoreSubscription;->billingStore:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "key"

    const-string v1, "Callback"

    .line 83
    invoke-static {p1, v0, v1}, Lcom/adjust/sdk/Util;->isValidParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "value"

    .line 86
    invoke-static {p2, v0, v1}, Lcom/adjust/sdk/Util;->isValidParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustPlayStoreSubscription;->callbackParameters:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 91
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/AdjustPlayStoreSubscription;->callbackParameters:Ljava/util/Map;

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/AdjustPlayStoreSubscription;->callbackParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 96
    sget-object p2, Lcom/adjust/sdk/AdjustPlayStoreSubscription;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Key %s was overwritten"

    invoke-interface {p2, p1, v0}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public addPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "key"

    const-string v1, "Partner"

    .line 101
    invoke-static {p1, v0, v1}, Lcom/adjust/sdk/Util;->isValidParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "value"

    .line 104
    invoke-static {p2, v0, v1}, Lcom/adjust/sdk/Util;->isValidParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustPlayStoreSubscription;->partnerParameters:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 109
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/AdjustPlayStoreSubscription;->partnerParameters:Ljava/util/Map;

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/AdjustPlayStoreSubscription;->partnerParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 114
    sget-object p2, Lcom/adjust/sdk/AdjustPlayStoreSubscription;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Key %s was overwritten"

    invoke-interface {p2, p1, v0}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method getBillingStore()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/adjust/sdk/AdjustPlayStoreSubscription;->billingStore:Ljava/lang/String;

    return-object v0
.end method

.method getCallbackParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/adjust/sdk/AdjustPlayStoreSubscription;->callbackParameters:Ljava/util/Map;

    return-object v0
.end method

.method getCurrency()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/adjust/sdk/AdjustPlayStoreSubscription;->currency:Ljava/lang/String;

    return-object v0
.end method

.method getOrderId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/adjust/sdk/AdjustPlayStoreSubscription;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method getPartnerParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/adjust/sdk/AdjustPlayStoreSubscription;->partnerParameters:Ljava/util/Map;

    return-object v0
.end method

.method getPrice()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/adjust/sdk/AdjustPlayStoreSubscription;->price:J

    return-wide v0
.end method

.method getPurchaseTime()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/adjust/sdk/AdjustPlayStoreSubscription;->purchaseTime:J

    return-wide v0
.end method

.method getPurchaseToken()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/adjust/sdk/AdjustPlayStoreSubscription;->purchaseToken:Ljava/lang/String;

    return-object v0
.end method

.method getSignature()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/adjust/sdk/AdjustPlayStoreSubscription;->signature:Ljava/lang/String;

    return-object v0
.end method

.method getSku()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/adjust/sdk/AdjustPlayStoreSubscription;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public setPurchaseTime(J)V
    .locals 0

    .line 79
    iput-wide p1, p0, Lcom/adjust/sdk/AdjustPlayStoreSubscription;->purchaseTime:J

    return-void
.end method
