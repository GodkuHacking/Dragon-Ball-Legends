.class public final Lcom/android/billingclient/api/QueryPurchaseHistoryParams;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@5.2.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;Lcom/android/billingclient/api/zzbr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;->zza(Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/QueryPurchaseHistoryParams;->zza:Ljava/lang/String;

    return-void
.end method

.method public static newBuilder()Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;
    .locals 2

    new-instance v0, Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;-><init>(Lcom/android/billingclient/api/zzbq;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/QueryPurchaseHistoryParams;->zza:Ljava/lang/String;

    return-object v0
.end method
