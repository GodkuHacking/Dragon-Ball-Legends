.class public abstract Lcom/google/android/gms/internal/play_games_inputmapping/zzac;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/play_games_inputmapping/zzao;
.implements Lcom/google/android/gms/internal/play_games_inputmapping/zzba;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "LOGGER:Lcom/google/android/gms/internal/play_games_inputmapping/zzp<",
        "TAPI;>;API::",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzao<",
        "TAPI;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzao;",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzba;"
    }
.end annotation


# static fields
.field private static final zza:Ljava/lang/String;


# instance fields
.field private final zzb:Ljava/util/logging/Level;

.field private final zzc:J

.field private zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzab;

.field private zze:Lcom/google/android/gms/internal/play_games_inputmapping/zzaf;

.field private zzf:Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;

.field private zzg:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zza:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/util/logging/Level;Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcb;->zzb()J

    move-result-wide v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzab;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zze:Lcom/google/android/gms/internal/play_games_inputmapping/zzaf;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzf:Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzg:[Ljava/lang/Object;

    const-string p2, "level"

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdt;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzb:Ljava/util/logging/Level;

    iput-wide v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzc:J

    return-void
.end method


# virtual methods
.method protected abstract zza()Lcom/google/android/gms/internal/play_games_inputmapping/zzdp;
.end method

.method protected zzb(Lcom/google/android/gms/internal/play_games_inputmapping/zzag;)Z
    .locals 6
    .param p1    # Lcom/google/android/gms/internal/play_games_inputmapping/zzag;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzab;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eqz p1, :cond_3

    sget-object v2, Lcom/google/android/gms/internal/play_games_inputmapping/zzaa;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zzc(Lcom/google/android/gms/internal/play_games_inputmapping/zzar;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzab;

    sget-object v3, Lcom/google/android/gms/internal/play_games_inputmapping/zzaa;->zzc:Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    .line 2
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zzc(Lcom/google/android/gms/internal/play_games_inputmapping/zzar;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_games_inputmapping/zzal;

    iget-object v3, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzab;

    .line 3
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzam;->zza(Lcom/google/android/gms/internal/play_games_inputmapping/zzag;Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;)Lcom/google/android/gms/internal/play_games_inputmapping/zzam;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzam;->zzc(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    iget-wide v4, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzc:J

    .line 5
    invoke-virtual {p1, v4, v5, v2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzam;->zzb(JLcom/google/android/gms/internal/play_games_inputmapping/zzal;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    return v3

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzab;

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzaa;->zzg:Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zzc(Lcom/google/android/gms/internal/play_games_inputmapping/zzar;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzat;

    if-eqz p1, :cond_5

    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzaa;->zzg:Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    iget-object v2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzab;

    if-eqz v2, :cond_4

    .line 7
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zzf(Lcom/google/android/gms/internal/play_games_inputmapping/zzar;)V

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzaj;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzh()Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/play_games_inputmapping/zzaa;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    .line 8
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;->zzc(Lcom/google/android/gms/internal/play_games_inputmapping/zzar;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    const-class v3, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzat;->zza()I

    move-result v4

    .line 9
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzds;->zzb(Ljava/lang/Class;II)[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-direct {v0, v2, p1, v3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzaj;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/play_games_inputmapping/zzat;[Ljava/lang/StackTraceElement;)V

    sget-object p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzaa;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzl(Lcom/google/android/gms/internal/play_games_inputmapping/zzar;Ljava/lang/Object;)V

    :cond_5
    return v1
.end method

.method protected abstract zzc()Lcom/google/android/gms/internal/play_games_inputmapping/zzp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "LOGGER;"
        }
    .end annotation
.end method

.method protected abstract zzd()Lcom/google/android/gms/internal/play_games_inputmapping/zzao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAPI;"
        }
    .end annotation
.end method

.method public final zze()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzc:J

    return-wide v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/play_games_inputmapping/zzaf;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zze:Lcom/google/android/gms/internal/play_games_inputmapping/zzaf;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot request log site information prior to postProcess()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzg(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/play_games_inputmapping/zzao;
    .locals 7
    .param p4    # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")TAPI;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/play_games_inputmapping/zzae;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_games_inputmapping/zzae;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/play_games_inputmapping/zzad;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zze:Lcom/google/android/gms/internal/play_games_inputmapping/zzaf;

    if-nez p1, :cond_0

    iput-object v6, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zze:Lcom/google/android/gms/internal/play_games_inputmapping/zzaf;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzd()Lcom/google/android/gms/internal/play_games_inputmapping/zzao;

    move-result-object p1

    return-object p1
.end method

.method public final zzh()Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzab;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;->zzg()Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;

    move-result-object v0

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzf:Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;

    return-object v0
.end method

.method public final zzj()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzf:Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzg:[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    aget-object v0, v0, v1

    return-object v0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot get literal argument if a template context exists"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzk()Ljava/util/logging/Level;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzb:Ljava/util/logging/Level;

    return-object v0
.end method

.method protected final zzl(Lcom/google/android/gms/internal/play_games_inputmapping/zzar;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzar<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzab;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzab;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzab;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zze(Lcom/google/android/gms/internal/play_games_inputmapping/zzar;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzm(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zze:Lcom/google/android/gms/internal/play_games_inputmapping/zzaf;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcb;->zzg()Lcom/google/android/gms/internal/play_games_inputmapping/zzca;

    move-result-object v0

    const-class v2, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzca;->zza(Ljava/lang/Class;I)Lcom/google/android/gms/internal/play_games_inputmapping/zzaf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zze:Lcom/google/android/gms/internal/play_games_inputmapping/zzaf;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zze:Lcom/google/android/gms/internal/play_games_inputmapping/zzaf;

    sget-object v2, Lcom/google/android/gms/internal/play_games_inputmapping/zzaf;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzaf;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zze:Lcom/google/android/gms/internal/play_games_inputmapping/zzaf;

    iget-object v2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzab;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zza()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzab;

    const-string v4, "logSiteKey"

    .line 2
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdt;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;->zza()I

    move-result v4

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_4

    .line 4
    sget-object v6, Lcom/google/android/gms/internal/play_games_inputmapping/zzaa;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;->zzb(I)Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/play_games_inputmapping/zzar;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;->zzd(I)Ljava/lang/Object;

    move-result-object v6

    .line 6
    instance-of v7, v6, Lcom/google/android/gms/internal/play_games_inputmapping/zzap;

    if-eqz v7, :cond_1

    .line 7
    check-cast v6, Lcom/google/android/gms/internal/play_games_inputmapping/zzap;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_games_inputmapping/zzap;->zzb()Lcom/google/android/gms/internal/play_games_inputmapping/zzag;

    move-result-object v0

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {v0, v6}, Lcom/google/android/gms/internal/play_games_inputmapping/zzas;->zza(Lcom/google/android/gms/internal/play_games_inputmapping/zzag;Ljava/lang/Object;)Lcom/google/android/gms/internal/play_games_inputmapping/zzag;

    move-result-object v0

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 9
    :cond_4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzb(Lcom/google/android/gms/internal/play_games_inputmapping/zzag;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 10
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcb;->zzk()Lcom/google/android/gms/internal/play_games_inputmapping/zzdg;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdg;->zzd()Z

    move-result v2

    if-nez v2, :cond_6

    .line 12
    sget-object v2, Lcom/google/android/gms/internal/play_games_inputmapping/zzaa;->zzf:Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzl(Lcom/google/android/gms/internal/play_games_inputmapping/zzar;Ljava/lang/Object;)V

    :cond_6
    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zza:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    iput-object v1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzg:[Ljava/lang/Object;

    :goto_2
    if-gtz v3, :cond_8

    .line 13
    aget-object p1, v1, v3

    instance-of v2, p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzx;

    if-eqz v2, :cond_7

    .line 14
    check-cast p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzx;->zza()Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    sget-object p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zza:Ljava/lang/String;

    if-eq v0, p1, :cond_9

    new-instance p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zza()Lcom/google/android/gms/internal/play_games_inputmapping/zzdp;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzdp;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzf:Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzc()Lcom/google/android/gms/internal/play_games_inputmapping/zzp;

    move-result-object p1

    .line 16
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzp;->zzd(Lcom/google/android/gms/internal/play_games_inputmapping/zzba;)V

    return-void
.end method

.method public final zzn()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzab;

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzab;

    sget-object v2, Lcom/google/android/gms/internal/play_games_inputmapping/zzaa;->zze:Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zzc(Lcom/google/android/gms/internal/play_games_inputmapping/zzar;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzo()[Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzf:Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzg:[Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot get arguments unless a template context exists"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
