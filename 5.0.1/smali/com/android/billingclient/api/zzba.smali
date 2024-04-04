.class public final synthetic Lcom/android/billingclient/api/zzba;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@5.2.1"


# direct methods
.method public static zza(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzfb;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzfb;->zzu()Lcom/google/android/gms/internal/play_billing/zzfa;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzfj;->zzu()Lcom/google/android/gms/internal/play_billing/zzfh;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzfh;->zzj(I)Lcom/google/android/gms/internal/play_billing/zzfh;

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/play_billing/zzfh;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzfh;

    .line 5
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/play_billing/zzfh;->zzk(I)Lcom/google/android/gms/internal/play_billing/zzfh;

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfa;->zzi(Lcom/google/android/gms/internal/play_billing/zzfh;)Lcom/google/android/gms/internal/play_billing/zzfa;

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzfa;->zzj(I)Lcom/google/android/gms/internal/play_billing/zzfa;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzbx;->zzc()Lcom/google/android/gms/internal/play_billing/zzcb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzfb;

    return-object p0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/play_billing/zzff;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzff;->zzu()Lcom/google/android/gms/internal/play_billing/zzfe;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi(I)Lcom/google/android/gms/internal/play_billing/zzfe;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzbx;->zzc()Lcom/google/android/gms/internal/play_billing/zzcb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzff;

    return-object p0
.end method
