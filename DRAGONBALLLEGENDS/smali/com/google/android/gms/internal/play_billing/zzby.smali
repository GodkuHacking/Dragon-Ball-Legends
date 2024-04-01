.class public abstract Lcom/google/android/gms/internal/play_billing/zzby;
.super Lcom/google/android/gms/internal/play_billing/zzcb;
.source "com.android.billingclient:billing@@5.2.1"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzdg;


# instance fields
.field protected final zzb:Lcom/google/android/gms/internal/play_billing/zzbs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzcb;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbs;->zza()Lcom/google/android/gms/internal/play_billing/zzbs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzby;->zzb:Lcom/google/android/gms/internal/play_billing/zzbs;

    return-void
.end method
