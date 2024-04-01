.class public final Lcom/google/android/gms/internal/measurement/zzoa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzib;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzib<",
        "Lcom/google/android/gms/internal/measurement/zzob;",
        ">;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzoa;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzib;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzib<",
            "Lcom/google/android/gms/internal/measurement/zzob;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzoa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzoa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzoa;->zza:Lcom/google/android/gms/internal/measurement/zzoa;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzoc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzoc;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzif;->zza(Lcom/google/android/gms/internal/measurement/zzib;)Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzoa;->zzb:Lcom/google/android/gms/internal/measurement/zzib;

    return-void
.end method

.method public static zzc()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoa;->zza:Lcom/google/android/gms/internal/measurement/zzoa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoa;->zzb()Lcom/google/android/gms/internal/measurement/zzob;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzob;->zza()Z

    const/4 v0, 0x1

    return v0
.end method

.method public static zzd()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoa;->zza:Lcom/google/android/gms/internal/measurement/zzoa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoa;->zzb()Lcom/google/android/gms/internal/measurement/zzob;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzob;->zzb()Z

    move-result v0

    return v0
.end method

.method public static zze()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoa;->zza:Lcom/google/android/gms/internal/measurement/zzoa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoa;->zzb()Lcom/google/android/gms/internal/measurement/zzob;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzob;->zzc()Z

    move-result v0

    return v0
.end method

.method public static zzf()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoa;->zza:Lcom/google/android/gms/internal/measurement/zzoa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoa;->zzb()Lcom/google/android/gms/internal/measurement/zzob;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzob;->zzd()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzoa;->zzb()Lcom/google/android/gms/internal/measurement/zzob;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzob;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzoa;->zzb:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzob;

    return-object v0
.end method
