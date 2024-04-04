.class final Lcom/google/android/gms/measurement/internal/zzfj;
.super Landroidx/collection/LruCache;
.source "com.google.android.gms:play-services-measurement@@20.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/LruCache<",
        "Ljava/lang/String;",
        "Lcom/google/android/gms/internal/measurement/zzc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzfm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfm;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfj;->zza:Lcom/google/android/gms/measurement/internal/zzfm;

    const/16 p1, 0x14

    invoke-direct {p0, p1}, Landroidx/collection/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfj;->zza:Lcom/google/android/gms/measurement/internal/zzfm;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/zzfm;->zzd(Lcom/google/android/gms/measurement/internal/zzfm;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzc;

    move-result-object p1

    return-object p1
.end method
