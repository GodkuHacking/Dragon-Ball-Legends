.class public Lcom/google/android/gms/internal/play_games_inputmapping/zzff;
.super Lcom/google/android/gms/internal/play_games_inputmapping/zzdy;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzfi<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzff<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzdy<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzc:Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzb:Z

    return-void
.end method

.method private static final zza(Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzgv;->zza()Lcom/google/android/gms/internal/play_games_inputmapping/zzgv;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzgv;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_games_inputmapping/zzgy;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzgy;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzg()Lcom/google/android/gms/internal/play_games_inputmapping/zzff;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzd()Lcom/google/android/gms/internal/play_games_inputmapping/zzdy;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzg()Lcom/google/android/gms/internal/play_games_inputmapping/zzff;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic zze(Lcom/google/android/gms/internal/play_games_inputmapping/zzdz;)Lcom/google/android/gms/internal/play_games_inputmapping/zzdy;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzh(Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;)Lcom/google/android/gms/internal/play_games_inputmapping/zzff;

    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/internal/play_games_inputmapping/zzff;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzc:Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzj()Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzh(Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;)Lcom/google/android/gms/internal/play_games_inputmapping/zzff;

    return-object v0
.end method

.method public final zzh(Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;)Lcom/google/android/gms/internal/play_games_inputmapping/zzff;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzm()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zza(Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;)V

    return-object p0
.end method

.method public final zzi()Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzj()Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-ne v3, v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez v3, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzgv;->zza()Lcom/google/android/gms/internal/play_games_inputmapping/zzgv;

    move-result-object v3

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 5
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/play_games_inputmapping/zzgv;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_games_inputmapping/zzgy;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzgy;->zzf(Ljava/lang/Object;)Z

    move-result v3

    if-eq v1, v3, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    const/4 v4, 0x2

    .line 3
    invoke-virtual {v0, v4, v1, v2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    return-object v0

    .line 4
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzho;

    .line 6
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzho;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzgn;)V

    .line 7
    throw v1
.end method

.method public zzj()Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzb:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzgv;->zza()Lcom/google/android/gms/internal/play_games_inputmapping/zzgv;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzgv;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_games_inputmapping/zzgy;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzgy;->zzc(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzb:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    return-object v0
.end method

.method public bridge synthetic zzk()Lcom/google/android/gms/internal/play_games_inputmapping/zzgn;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzj()Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/internal/play_games_inputmapping/zzgn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzc:Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    return-object v0
.end method

.method protected zzm()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zza(Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    return-void
.end method
