.class public final Lcom/google/android/gms/internal/play_billing/zzfe;
.super Lcom/google/android/gms/internal/play_billing/zzbx;
.source "com.android.billingclient:billing@@5.2.1"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzdg;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzff;->zzv()Lcom/google/android/gms/internal/play_billing/zzff;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzbx;-><init>(Lcom/google/android/gms/internal/play_billing/zzcb;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/zzfd;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzff;->zzv()Lcom/google/android/gms/internal/play_billing/zzff;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzbx;-><init>(Lcom/google/android/gms/internal/play_billing/zzcb;)V

    return-void
.end method


# virtual methods
.method public final zzi(I)Lcom/google/android/gms/internal/play_billing/zzfe;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzbx;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfe;->zza:Lcom/google/android/gms/internal/play_billing/zzcb;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzff;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzff;->zzw(Lcom/google/android/gms/internal/play_billing/zzff;I)V

    return-object p0
.end method
