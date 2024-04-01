.class public final Lcom/google/android/gms/internal/games_v2/zzfb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.0.0"


# direct methods
.method public static zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/games_v2/zzfc;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1d

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    const-string v3, "expected a non-null reference"

    .line 8
    invoke-virtual {v0, v3, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzfc;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-object p0
.end method
