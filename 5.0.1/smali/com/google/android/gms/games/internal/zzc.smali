.class public final synthetic Lcom/google/android/gms/games/internal/zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/games/internal/zzg;

.field public final synthetic zzb:Lcom/google/android/gms/games/internal/zzd;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/games/internal/zzg;Lcom/google/android/gms/games/internal/zzd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzc;->zza:Lcom/google/android/gms/games/internal/zzg;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzc;->zzb:Lcom/google/android/gms/games/internal/zzd;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzc;->zza:Lcom/google/android/gms/games/internal/zzg;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzc;->zzb:Lcom/google/android/gms/games/internal/zzd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/zzg;->zzg(Lcom/google/android/gms/games/internal/zzd;)V

    return-void
.end method
