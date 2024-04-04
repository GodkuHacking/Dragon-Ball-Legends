.class final Lcom/google/android/gms/internal/play_games_inputmapping/zzgr;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/play_games_inputmapping/zzgy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzgy<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzgn;

.field private final zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzhp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzhp<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzey<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzhp;Lcom/google/android/gms/internal/play_games_inputmapping/zzey;Lcom/google/android/gms/internal/play_games_inputmapping/zzgn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzhp<",
            "**>;",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzey<",
            "*>;",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzgn;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzgr;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzhp;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzey;->zzc(Lcom/google/android/gms/internal/play_games_inputmapping/zzgn;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzgr;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzgr;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzey;

    iput-object p3, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzgr;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzgn;

    return-void
.end method

.method static zzg(Lcom/google/android/gms/internal/play_games_inputmapping/zzhp;Lcom/google/android/gms/internal/play_games_inputmapping/zzey;Lcom/google/android/gms/internal/play_games_inputmapping/zzgn;)Lcom/google/android/gms/internal/play_games_inputmapping/zzgr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzhp<",
            "**>;",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzey<",
            "*>;",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzgn;",
            ")",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzgr<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzgr;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzgr;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzhp;Lcom/google/android/gms/internal/play_games_inputmapping/zzey;Lcom/google/android/gms/internal/play_games_inputmapping/zzgn;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzgr;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzhp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzhp;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzhp;->zzb(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzgr;->zzc:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzgr;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzey;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzey;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_games_inputmapping/zzfc;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzgr;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzhp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzhp;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzgr;->zzc:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzgr;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzey;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzey;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_games_inputmapping/zzfc;

    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final zzc(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzgr;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzhp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzhp;->zze(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzgr;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzey;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzey;->zzb(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzd(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzgr;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzhp;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzha;->zzD(Lcom/google/android/gms/internal/play_games_inputmapping/zzhp;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzgr;->zzc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzgr;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzey;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzha;->zzC(Lcom/google/android/gms/internal/play_games_inputmapping/zzey;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zze(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzgr;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzhp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzhp;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzgr;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzhp;

    .line 2
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzhp;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzgr;->zzc:Z

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzgr;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzey;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzey;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_games_inputmapping/zzfc;

    iget-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzgr;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzey;

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzey;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_games_inputmapping/zzfc;

    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public final zzf(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzgr;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzey;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzey;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_games_inputmapping/zzfc;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/play_games_inputmapping/zzew;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzew;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzgr;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzey;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzey;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_games_inputmapping/zzfc;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method
