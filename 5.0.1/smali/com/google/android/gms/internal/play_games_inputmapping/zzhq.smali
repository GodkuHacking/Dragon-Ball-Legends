.class public final Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;


# instance fields
.field private zzb:I

.field private zzc:[I

.field private zzd:[Ljava/lang/Object;

.field private zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1
    invoke-direct {p0, v2, v1, v0, v3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;->zze:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;->zzb:I

    iput-object p2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;->zzc:[I

    iput-object p3, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;->zzd:[Ljava/lang/Object;

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;

    return-object v0
.end method

.method static zzd(Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;)Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;->zzb:I

    iget v0, p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;->zzb:I

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;->zzc:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;->zzc:[I

    iget v3, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;->zzb:I

    iget v3, p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;->zzb:I

    invoke-static {v2, v1, v0, v1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;->zzd:[Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 5
    iget-object v3, p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;->zzd:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;->zzb:I

    iget p0, p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;->zzb:I

    invoke-static {v3, v1, v2, v1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;

    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, v1, v0, v2, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;

    if-nez v2, :cond_2

    return v1

    .line 2
    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;

    iget-object v1, p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;->zzc:[I

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;->zzd:[Ljava/lang/Object;

    return v0
.end method

.method public final hashCode()I
    .locals 1

    const v0, 0x7bc6f

    return v0
.end method

.method public final zza()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;->zze:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;->zze:I

    :cond_0
    return v0
.end method

.method public final zzb()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;->zze:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;->zze:I

    :cond_0
    return v0
.end method

.method final zze(Ljava/lang/StringBuilder;I)V
    .locals 0

    return-void
.end method
