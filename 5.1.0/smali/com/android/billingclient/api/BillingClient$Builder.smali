.class public final Lcom/android/billingclient/api/BillingClient$Builder;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@5.2.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/BillingClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private volatile zza:Ljava/lang/String;

.field private volatile zzb:Z

.field private volatile zzc:Z

.field private final zzd:Landroid/content/Context;

.field private volatile zze:Lcom/android/billingclient/api/PurchasesUpdatedListener;

.field private volatile zzf:Lcom/android/billingclient/api/zzbf;

.field private volatile zzg:Lcom/android/billingclient/api/AlternativeBillingListener;


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/zzp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzd:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/billingclient/api/BillingClient;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzd:Landroid/content/Context;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zze:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzb:Z

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zze:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzg:Lcom/android/billingclient/api/AlternativeBillingListener;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a valid listener for Google Play Billing purchases updates when enabling Alternative Billing."

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zze:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzb:Z

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzd:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zze:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    iget-object v7, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzg:Lcom/android/billingclient/api/AlternativeBillingListener;

    move-object v1, v0

    .line 3
    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;-><init>(Ljava/lang/String;ZZLandroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/AlternativeBillingListener;)V

    return-object v0

    .line 6
    :cond_2
    new-instance v0, Lcom/android/billingclient/api/BillingClientImpl;

    iget-boolean v1, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzb:Z

    iget-object v2, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzd:Landroid/content/Context;

    const/4 v3, 0x0

    .line 4
    invoke-direct {v0, v3, v1, v2, v3}, Lcom/android/billingclient/api/BillingClientImpl;-><init>(Ljava/lang/String;ZLandroid/content/Context;Lcom/android/billingclient/api/zzbf;)V

    return-object v0

    .line 1
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Support for pending purchases must be enabled. Enable this by calling \'enablePendingPurchases()\' on BillingClientBuilder."

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a valid listener for purchases updates."

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a valid Context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enableAlternativeBilling(Lcom/android/billingclient/api/AlternativeBillingListener;)Lcom/android/billingclient/api/BillingClient$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzg:Lcom/android/billingclient/api/AlternativeBillingListener;

    return-object p0
.end method

.method public enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzb:Z

    return-object p0
.end method

.method public setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zze:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    return-object p0
.end method
