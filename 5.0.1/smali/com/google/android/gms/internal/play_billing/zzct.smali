.class abstract Lcom/google/android/gms/internal/play_billing/zzct;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@5.2.1"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/play_billing/zzct;

.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzct;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzcp;-><init>(Lcom/google/android/gms/internal/play_billing/zzco;)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzct;->zza:Lcom/google/android/gms/internal/play_billing/zzct;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcr;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzcr;-><init>(Lcom/google/android/gms/internal/play_billing/zzcq;)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzct;->zzb:Lcom/google/android/gms/internal/play_billing/zzct;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/zzcs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zzc()Lcom/google/android/gms/internal/play_billing/zzct;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzct;->zza:Lcom/google/android/gms/internal/play_billing/zzct;

    return-object v0
.end method

.method static zzd()Lcom/google/android/gms/internal/play_billing/zzct;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzct;->zzb:Lcom/google/android/gms/internal/play_billing/zzct;

    return-object v0
.end method


# virtual methods
.method abstract zza(Ljava/lang/Object;J)V
.end method

.method abstract zzb(Ljava/lang/Object;Ljava/lang/Object;J)V
.end method
