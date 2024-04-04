.class public final Lcom/google/android/gms/internal/play_games_inputmapping/zzfo;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# static fields
.field static final zza:Ljava/nio/charset/Charset;

.field static final zzb:Ljava/nio/charset/Charset;

.field public static final zzc:[B

.field public static final zzd:Ljava/nio/ByteBuffer;

.field public static final zze:Lcom/google/android/gms/internal/play_games_inputmapping/zzer;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzfo;->zza:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzfo;->zzb:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzfo;->zzc:[B

    .line 3
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzfo;->zzd:Ljava/nio/ByteBuffer;

    sget-object v3, Lcom/google/android/gms/internal/play_games_inputmapping/zzfo;->zzc:[B

    .line 4
    sget v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzer;->zza:I

    .line 5
    array-length v1, v3

    new-instance v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzep;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    .line 6
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/play_games_inputmapping/zzep;-><init>([BIIZLcom/google/android/gms/internal/play_games_inputmapping/zzeo;)V

    .line 7
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzep;->zza(I)I
    :try_end_0
    .catch Lcom/google/android/gms/internal/play_games_inputmapping/zzfq; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    sput-object v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzfo;->zze:Lcom/google/android/gms/internal/play_games_inputmapping/zzer;

    return-void

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 8
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static zza(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/16 p0, 0x4cf

    return p0

    :cond_0
    const/16 p0, 0x4d5

    return p0
.end method

.method public static zzb([B)I
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, p0, v1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfo;->zzd(I[BII)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public static zzc(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method static zzd(I[BII)I
    .locals 1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    mul-int/lit8 p0, p0, 0x1f

    .line 1
    aget-byte v0, p1, p2

    add-int/2addr p0, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method static zze(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 1
    throw p0
.end method

.method static zzf(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static zzg(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzgn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzgn;->zzr()Lcom/google/android/gms/internal/play_games_inputmapping/zzgm;

    move-result-object p0

    check-cast p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzgn;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzgm;->zzf(Lcom/google/android/gms/internal/play_games_inputmapping/zzgn;)Lcom/google/android/gms/internal/play_games_inputmapping/zzgm;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzgm;->zzk()Lcom/google/android/gms/internal/play_games_inputmapping/zzgn;

    move-result-object p0

    return-object p0
.end method

.method public static zzh([B)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzfo;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static zzi([B)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzid;->zzd([B)Z

    move-result p0

    return p0
.end method
