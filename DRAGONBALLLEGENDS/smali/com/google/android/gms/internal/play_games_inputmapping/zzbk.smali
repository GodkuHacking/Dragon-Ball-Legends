.class public final Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzbn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzbn<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzbm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzbm<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzc:Ljava/util/Map;
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

.field private final zzd:Ljava/util/Map;
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

.field private final zze:Lcom/google/android/gms/internal/play_games_inputmapping/zzbn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzbn<",
            "Ljava/lang/Object;",
            "-TC;>;"
        }
    .end annotation
.end field

.field private zzf:Lcom/google/android/gms/internal/play_games_inputmapping/zzbm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzbm<",
            "Ljava/lang/Object;",
            "-TC;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzbn;

    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzbm;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzbn;Lcom/google/android/gms/internal/play_games_inputmapping/zzbh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;->zzc:Ljava/util/Map;

    new-instance p2, Ljava/util/HashMap;

    .line 2
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;->zzd:Ljava/util/Map;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;->zzf:Lcom/google/android/gms/internal/play_games_inputmapping/zzbm;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;->zze:Lcom/google/android/gms/internal/play_games_inputmapping/zzbn;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;)Lcom/google/android/gms/internal/play_games_inputmapping/zzbm;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;->zzf:Lcom/google/android/gms/internal/play_games_inputmapping/zzbm;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;)Lcom/google/android/gms/internal/play_games_inputmapping/zzbn;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;->zze:Lcom/google/android/gms/internal/play_games_inputmapping/zzbn;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;->zzc:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;->zzd:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/play_games_inputmapping/zzbm;)Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzbm<",
            "Ljava/lang/Object;",
            "-TC;>;)",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzbk<",
            "TC;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;->zzf:Lcom/google/android/gms/internal/play_games_inputmapping/zzbm;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/play_games_inputmapping/zzbo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzbo<",
            "TC;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbl;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;Lcom/google/android/gms/internal/play_games_inputmapping/zzbh;)V

    return-object v0
.end method

.method final zzg(Lcom/google/android/gms/internal/play_games_inputmapping/zzar;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzar<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "key"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdt;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzar;->zzg()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzbm;

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdt;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzar;->zzg()Z

    move-result v0

    const-string v2, "key must be repeating"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdt;->zzc(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;->zzc:Ljava/util/Map;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;->zzd:Ljava/util/Map;

    .line 6
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzbn;

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdt;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;->zzd:Ljava/util/Map;

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;->zzc:Ljava/util/Map;

    .line 9
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
