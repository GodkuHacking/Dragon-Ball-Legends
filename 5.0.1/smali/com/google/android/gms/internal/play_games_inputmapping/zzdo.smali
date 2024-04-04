.class public abstract Lcom/google/android/gms/internal/play_games_inputmapping/zzdo;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;

.field private zzb:I

.field private zzc:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdo;->zzb:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdo;->zzc:I

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdt;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdo;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;

    return-void
.end method


# virtual methods
.method protected abstract zza()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected abstract zzc(IILcom/google/android/gms/internal/play_games_inputmapping/zzdj;)V
.end method

.method public final zzh()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdo;->zzc:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final zzi()Lcom/google/android/gms/internal/play_games_inputmapping/zzdp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdo;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;->zza()Lcom/google/android/gms/internal/play_games_inputmapping/zzdp;

    move-result-object v0

    return-object v0
.end method

.method public final zzj()Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdo;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;->zzb()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdr;->zzc(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    move v4, v1

    move v5, v3

    :goto_0
    const/4 v6, 0x1

    if-ltz v2, :cond_17

    add-int/lit8 v7, v2, 0x1

    move v9, v1

    move v8, v7

    .line 2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    const-string v11, "unterminated parameter"

    if-ge v8, v10, :cond_16

    add-int/lit8 v10, v8, 0x1

    .line 3
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v12, v8, -0x30

    int-to-char v12, v12

    const/16 v13, 0xa

    if-ge v12, v13, :cond_1

    mul-int/lit8 v9, v9, 0xa

    add-int/2addr v9, v12

    const v8, 0xf4240

    if-ge v9, v8, :cond_0

    move v8, v10

    goto :goto_1

    :cond_0
    const-string v1, "index too large"

    .line 27
    invoke-static {v1, v0, v2, v10}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdq;->zzc(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/internal/play_games_inputmapping/zzdq;

    move-result-object v0

    throw v0

    :cond_1
    const/16 v12, 0x24

    if-ne v8, v12, :cond_5

    add-int/lit8 v5, v10, -0x1

    sub-int/2addr v5, v7

    if-eqz v5, :cond_4

    .line 4
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x30

    if-eq v5, v7, :cond_3

    add-int/lit8 v9, v9, -0x1

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v10, v5, :cond_2

    add-int/lit8 v5, v10, 0x1

    .line 6
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move v7, v10

    move v10, v5

    move v5, v9

    goto :goto_2

    .line 30
    :cond_2
    invoke-static {v11, v0, v2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdq;->zzd(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/play_games_inputmapping/zzdq;

    move-result-object v0

    throw v0

    :cond_3
    const-string v1, "index has leading zero"

    .line 29
    invoke-static {v1, v0, v2, v10}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdq;->zzc(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/internal/play_games_inputmapping/zzdq;

    move-result-object v0

    throw v0

    :cond_4
    const-string v1, "missing index"

    .line 28
    invoke-static {v1, v0, v2, v10}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdq;->zzc(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/internal/play_games_inputmapping/zzdq;

    move-result-object v0

    throw v0

    :cond_5
    const/16 v9, 0x3c

    if-ne v8, v9, :cond_8

    if-eq v5, v3, :cond_7

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v10, v7, :cond_6

    add-int/lit8 v7, v10, 0x1

    .line 8
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move v14, v10

    move v10, v7

    move v7, v14

    goto :goto_2

    .line 32
    :cond_6
    invoke-static {v11, v0, v2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdq;->zzd(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/play_games_inputmapping/zzdq;

    move-result-object v0

    throw v0

    :cond_7
    const-string v1, "invalid relative parameter"

    .line 31
    invoke-static {v1, v0, v2, v10}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdq;->zzc(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/internal/play_games_inputmapping/zzdq;

    move-result-object v0

    throw v0

    :cond_8
    add-int/lit8 v5, v4, 0x1

    move v14, v5

    move v5, v4

    move v4, v14

    :goto_2
    add-int/2addr v10, v3

    .line 9
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v10, v8, :cond_15

    .line 10
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    and-int/lit8 v8, v8, -0x21

    add-int/lit8 v8, v8, -0x41

    int-to-char v8, v8

    const/16 v9, 0x1a

    if-ge v8, v9, :cond_14

    add-int/lit8 v8, v10, 0x1

    .line 11
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    and-int/lit8 v11, v9, 0x20

    if-nez v11, :cond_9

    goto :goto_4

    :cond_9
    move v6, v1

    .line 12
    :goto_4
    invoke-static {v0, v7, v10, v6}, Lcom/google/android/gms/internal/play_games_inputmapping/zzax;->zzg(Ljava/lang/String;IIZ)Lcom/google/android/gms/internal/play_games_inputmapping/zzax;

    move-result-object v6

    .line 13
    invoke-static {v9}, Lcom/google/android/gms/internal/play_games_inputmapping/zzaw;->zzc(C)Lcom/google/android/gms/internal/play_games_inputmapping/zzaw;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 14
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/play_games_inputmapping/zzax;->zzi(Lcom/google/android/gms/internal/play_games_inputmapping/zzaw;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 15
    invoke-static {v5, v7, v6}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdl;->zza(ILcom/google/android/gms/internal/play_games_inputmapping/zzaw;Lcom/google/android/gms/internal/play_games_inputmapping/zzax;)Lcom/google/android/gms/internal/play_games_inputmapping/zzdl;

    move-result-object v6

    goto :goto_7

    :cond_a
    const-string v1, "invalid format specifier"

    .line 33
    invoke-static {v1, v0, v2, v8}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdq;->zzc(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/internal/play_games_inputmapping/zzdq;

    move-result-object v0

    throw v0

    :cond_b
    const/16 v7, 0x74

    const/16 v10, 0xa0

    const-string v11, "invalid format specification"

    if-eq v9, v7, :cond_10

    const/16 v7, 0x54

    if-ne v9, v7, :cond_c

    goto :goto_6

    :cond_c
    const/16 v7, 0x68

    if-eq v9, v7, :cond_e

    const/16 v7, 0x48

    if-ne v9, v7, :cond_d

    goto :goto_5

    .line 38
    :cond_d
    invoke-static {v11, v0, v2, v8}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdq;->zzc(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/internal/play_games_inputmapping/zzdq;

    move-result-object v0

    throw v0

    .line 20
    :cond_e
    :goto_5
    invoke-virtual {v6, v10, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzax;->zzl(IZ)Z

    move-result v7

    if-eqz v7, :cond_f

    new-instance v7, Lcom/google/android/gms/internal/play_games_inputmapping/zzdm;

    .line 21
    invoke-direct {v7, v6, v5, v6}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdm;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzax;ILcom/google/android/gms/internal/play_games_inputmapping/zzax;)V

    move-object v6, v7

    goto :goto_7

    .line 37
    :cond_f
    invoke-static {v11, v0, v2, v8}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdq;->zzc(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/internal/play_games_inputmapping/zzdq;

    move-result-object v0

    throw v0

    .line 16
    :cond_10
    :goto_6
    invoke-virtual {v6, v10, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzax;->zzl(IZ)Z

    move-result v7

    if-eqz v7, :cond_13

    add-int/lit8 v7, v8, 0x1

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v7, v9, :cond_12

    .line 18
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdh;->zzb(C)Lcom/google/android/gms/internal/play_games_inputmapping/zzdh;

    move-result-object v9

    if-eqz v9, :cond_11

    .line 19
    invoke-static {v9, v6, v5}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdi;->zza(Lcom/google/android/gms/internal/play_games_inputmapping/zzdh;Lcom/google/android/gms/internal/play_games_inputmapping/zzax;I)Lcom/google/android/gms/internal/play_games_inputmapping/zzdj;

    move-result-object v6

    move v8, v7

    .line 22
    :goto_7
    invoke-virtual {p0, v2, v8, v6}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdo;->zzl(IILcom/google/android/gms/internal/play_games_inputmapping/zzdj;)V

    .line 1
    invoke-static {v0, v8}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdr;->zzc(Ljava/lang/String;I)I

    move-result v2

    goto/16 :goto_0

    :cond_11
    const-string v1, "illegal date/time conversion"

    .line 36
    invoke-static {v1, v0, v8}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdq;->zza(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/play_games_inputmapping/zzdq;

    move-result-object v0

    throw v0

    :cond_12
    const-string v1, "truncated format specifier"

    .line 35
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdq;->zza(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/play_games_inputmapping/zzdq;

    move-result-object v0

    throw v0

    .line 34
    :cond_13
    invoke-static {v11, v0, v2, v8}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdq;->zzc(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/internal/play_games_inputmapping/zzdq;

    move-result-object v0

    throw v0

    :cond_14
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 39
    :cond_15
    invoke-static {v11, v0, v2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdq;->zzd(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/play_games_inputmapping/zzdq;

    move-result-object v0

    throw v0

    .line 40
    :cond_16
    invoke-static {v11, v0, v2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdq;->zzd(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/play_games_inputmapping/zzdq;

    move-result-object v0

    throw v0

    .line 8
    :cond_17
    iget v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdo;->zzb:I

    add-int/lit8 v2, v0, 0x1

    and-int/2addr v2, v0

    if-nez v2, :cond_19

    iget v2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdo;->zzc:I

    const/16 v4, 0x1f

    if-le v2, v4, :cond_18

    if-ne v0, v3, :cond_19

    .line 26
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdo;->zza()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_19
    not-int v0, v0

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    new-array v2, v6, [Ljava/lang/Object;

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "unreferenced arguments [first missing index=%d]"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdo;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;->zzb()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdq;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/play_games_inputmapping/zzdq;

    move-result-object v0

    throw v0
.end method

.method public final zzk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdo;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;->zzb()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzl(IILcom/google/android/gms/internal/play_games_inputmapping/zzdj;)V
    .locals 3

    .line 1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdj;->zzc()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdo;->zzb:I

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdj;->zzc()I

    move-result v2

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdo;->zzb:I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdo;->zzc:I

    .line 3
    invoke-virtual {p3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdj;->zzc()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdo;->zzc:I

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdo;->zzc(IILcom/google/android/gms/internal/play_games_inputmapping/zzdj;)V

    return-void
.end method
