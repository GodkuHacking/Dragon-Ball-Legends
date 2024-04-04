.class public final Lcom/android/billingclient/api/ProductDetails$PricingPhase;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@5.2.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/ProductDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PricingPhase"
.end annotation


# instance fields
.field private final billingCycleCount:I

.field private final billingPeriod:Ljava/lang/String;

.field private final formattedPrice:Ljava/lang/String;

.field private final priceAmountMicros:J

.field private final priceCurrencyCode:Ljava/lang/String;

.field private final recurrenceMode:I


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "billingPeriod"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->billingPeriod:Ljava/lang/String;

    const-string v0, "priceCurrencyCode"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->priceCurrencyCode:Ljava/lang/String;

    const-string v0, "formattedPrice"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->formattedPrice:Ljava/lang/String;

    const-string v0, "priceAmountMicros"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->priceAmountMicros:J

    const-string v0, "recurrenceMode"

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->recurrenceMode:I

    const-string v0, "billingCycleCount"

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->billingCycleCount:I

    return-void
.end method


# virtual methods
.method public getBillingCycleCount()I
    .locals 1

    iget v0, p0, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->billingCycleCount:I

    return v0
.end method

.method public getBillingPeriod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->billingPeriod:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->formattedPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceAmountMicros()J
    .locals 2

    iget-wide v0, p0, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->priceAmountMicros:J

    return-wide v0
.end method

.method public getPriceCurrencyCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->priceCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRecurrenceMode()I
    .locals 1

    iget v0, p0, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->recurrenceMode:I

    return v0
.end method
