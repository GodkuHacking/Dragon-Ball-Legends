.class public final Lcom/google/android/gms/internal/play_games_inputmapping/zzav;
.super Lcom/google/android/gms/internal/play_games_inputmapping/zzdo;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/play_games_inputmapping/zzdk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzdo<",
        "Ljava/lang/StringBuilder;",
        ">;",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzdk;"
    }
.end annotation


# instance fields
.field protected final zza:[Ljava/lang/Object;

.field protected final zzb:Ljava/lang/StringBuilder;

.field private zzc:I


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdo;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzav;->zzc:I

    const-string p1, "arguments"

    .line 2
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdt;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzav;->zza:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzav;->zzb:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/play_games_inputmapping/zzba;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzba;->zzi()Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzav;

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzba;->zzi()Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzba;->zzo()[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzav;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdo;->zzj()Ljava/lang/Object;

    move-result-object p1

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzba;->zzo()[Ljava/lang/Object;

    move-result-object p0

    array-length p0, p0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdo;->zzh()I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p1, Ljava/lang/StringBuilder;

    const-string p0, " [ERROR: UNUSED LOG ARGUMENTS]"

    .line 4
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1

    .line 5
    :cond_1
    invoke-interface {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzba;->zzj()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbe;->zza(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    :goto_0
    check-cast p1, Ljava/lang/StringBuilder;

    return-object p1
.end method

.method private static zzm(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const-string v0, "[INVALID: format="

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", type="

    .line 3
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", value="

    .line 5
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbe;->zza(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdo;->zzi()Lcom/google/android/gms/internal/play_games_inputmapping/zzdp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzav;->zzb:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdo;->zzk()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzav;->zzc:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdo;->zzk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdp;->zzb(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzav;->zzb:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public final zzc(IILcom/google/android/gms/internal/play_games_inputmapping/zzdj;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdo;->zzi()Lcom/google/android/gms/internal/play_games_inputmapping/zzdp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzav;->zzb:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdo;->zzk()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzav;->zzc:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdp;->zzb(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    iget-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzav;->zza:[Ljava/lang/Object;

    .line 2
    invoke-virtual {p3, p0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdj;->zze(Lcom/google/android/gms/internal/play_games_inputmapping/zzdk;[Ljava/lang/Object;)V

    iput p2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzav;->zzc:I

    return-void
.end method

.method public final zzd(Ljava/lang/Object;Lcom/google/android/gms/internal/play_games_inputmapping/zzaw;Lcom/google/android/gms/internal/play_games_inputmapping/zzax;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzaw;->zzd()Lcom/google/android/gms/internal/play_games_inputmapping/zzay;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_9

    if-eq v0, v4, :cond_7

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v5, 0x4

    if-ne v0, v5, :cond_1

    .line 2
    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 25
    throw p1

    .line 3
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_3
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_5

    :cond_4
    :goto_0
    move v0, v4

    goto :goto_1

    .line 5
    :cond_5
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_6

    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_6

    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_0

    .line 6
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v0

    goto :goto_1

    .line 7
    :cond_7
    instance-of v0, p1, Ljava/lang/Boolean;

    :goto_1
    if-eqz v0, :cond_8

    goto :goto_2

    .line 19
    :cond_8
    iget-object p3, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzav;->zzb:Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzaw;->zze()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p1, p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzav;->zzm(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzav;->zzb:Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzaw;->ordinal()I

    move-result v5

    if-eqz v5, :cond_f

    if-eq v5, v4, :cond_e

    if-eq v5, v2, :cond_b

    if-eq v5, v1, :cond_e

    const/4 v1, 0x5

    if-eq v5, v1, :cond_a

    goto :goto_3

    :cond_a
    const/16 v1, 0x80

    .line 13
    invoke-virtual {p3, v1, v3, v3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzax;->zze(IZZ)Lcom/google/android/gms/internal/play_games_inputmapping/zzax;

    move-result-object v1

    .line 14
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzax;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 15
    check-cast p1, Ljava/lang/Number;

    invoke-static {v0, p1, p3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbe;->zzb(Ljava/lang/StringBuilder;Ljava/lang/Number;Lcom/google/android/gms/internal/play_games_inputmapping/zzax;)V

    return-void

    .line 23
    :cond_b
    invoke-virtual {p3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzax;->zzj()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 9
    instance-of p2, p1, Ljava/lang/Character;

    if-eqz p2, :cond_c

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void

    .line 11
    :cond_c
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    ushr-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_d

    int-to-char p1, p1

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 13
    :cond_d
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    return-void

    .line 15
    :cond_e
    invoke-virtual {p3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzax;->zzj()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void

    .line 17
    :cond_f
    instance-of v1, p1, Ljava/util/Formattable;

    if-nez v1, :cond_13

    invoke-virtual {p3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzax;->zzj()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbe;->zza(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 20
    :cond_10
    :goto_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzaw;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzax;->zzj()Z

    move-result v2

    if-nez v2, :cond_12

    .line 21
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzaw;->zza()C

    move-result p2

    invoke-virtual {p3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzax;->zzk()Z

    move-result v1

    if-eqz v1, :cond_11

    const v1, 0xffdf

    and-int/2addr p2, v1

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "%"

    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzax;->zzh(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    int-to-char p2, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_12
    sget-object p2, Lcom/google/android/gms/internal/play_games_inputmapping/zzbe;->zza:Ljava/util/Locale;

    new-array p3, v4, [Ljava/lang/Object;

    aput-object p1, p3, v3

    .line 23
    invoke-static {p2, v1, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 19
    :cond_13
    check-cast p1, Ljava/util/Formattable;

    invoke-static {p1, v0, p3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbe;->zzc(Ljava/util/Formattable;Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/play_games_inputmapping/zzax;)V

    return-void
.end method

.method public final zze(Ljava/lang/Object;Lcom/google/android/gms/internal/play_games_inputmapping/zzdh;Lcom/google/android/gms/internal/play_games_inputmapping/zzax;)V
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/util/Date;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/util/Calendar;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzav;->zzb:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdh;->zza()C

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "%t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p1, p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzav;->zzm(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%"

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzax;->zzh(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzax;->zzk()Z

    move-result p3

    const/4 v1, 0x1

    if-eq v1, p3, :cond_2

    const/16 p3, 0x74

    goto :goto_1

    :cond_2
    const/16 p3, 0x54

    .line 4
    :goto_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdh;->zza()C

    move-result p2

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzav;->zzb:Ljava/lang/StringBuilder;

    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbe;->zza:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 7
    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final zzf()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzav;->zzb:Ljava/lang/StringBuilder;

    const-string v1, "[ERROR: MISSING LOG ARGUMENT]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final zzg()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzav;->zzb:Ljava/lang/StringBuilder;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
