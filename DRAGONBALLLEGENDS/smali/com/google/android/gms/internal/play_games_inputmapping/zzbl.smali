.class final Lcom/google/android/gms/internal/play_games_inputmapping/zzbl;
.super Lcom/google/android/gms/internal/play_games_inputmapping/zzbo;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzbo<",
        "TC;>;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzar<",
            "*>;",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzbn<",
            "*-TC;>;>;"
        }
    .end annotation
.end field

.field private final zzb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzar<",
            "*>;",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzbm<",
            "*-TC;>;>;"
        }
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/play_games_inputmapping/zzbn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzbn<",
            "Ljava/lang/Object;",
            "-TC;>;"
        }
    .end annotation
.end field

.field private final zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzbm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzbm<",
            "Ljava/lang/Object;",
            "-TC;>;"
        }
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;Lcom/google/android/gms/internal/play_games_inputmapping/zzbh;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbo;-><init>()V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbl;->zza:Ljava/util/Map;

    new-instance p2, Ljava/util/HashMap;

    .line 2
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbl;->zzb:Ljava/util/Map;

    iget-object p2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbl;->zza:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;->zze(Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;)Ljava/util/Map;

    move-result-object v0

    .line 3
    invoke-interface {p2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbl;->zzb:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;->zzf(Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;)Ljava/util/Map;

    move-result-object v0

    .line 4
    invoke-interface {p2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;->zzc(Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;)Lcom/google/android/gms/internal/play_games_inputmapping/zzbn;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbl;->zzc:Lcom/google/android/gms/internal/play_games_inputmapping/zzbn;

    invoke-static {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;->zzb(Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;)Lcom/google/android/gms/internal/play_games_inputmapping/zzbm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbl;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzbm;

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/play_games_inputmapping/zzar;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzar<",
            "TT;>;TT;TC;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbl;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbn;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbn;->zza(Lcom/google/android/gms/internal/play_games_inputmapping/zzar;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzar;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/play_games_inputmapping/zzaq;)V

    return-void
.end method

.method protected final zzb(Lcom/google/android/gms/internal/play_games_inputmapping/zzar;Ljava/util/Iterator;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzar<",
            "TT;>;",
            "Ljava/util/Iterator<",
            "TT;>;TC;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbl;->zzb:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbm;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbm;->zza(Lcom/google/android/gms/internal/play_games_inputmapping/zzar;Ljava/util/Iterator;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbl;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzbm;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbl;->zza:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzar;->zza(Ljava/util/Iterator;Lcom/google/android/gms/internal/play_games_inputmapping/zzaq;)V

    return-void

    .line 4
    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbo;->zza(Lcom/google/android/gms/internal/play_games_inputmapping/zzar;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method
