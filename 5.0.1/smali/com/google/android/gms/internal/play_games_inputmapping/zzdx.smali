.class final Lcom/google/android/gms/internal/play_games_inputmapping/zzdx;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/play_games_inputmapping/zzdw;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final zzc([Ljava/lang/StackTraceElement;Ljava/lang/Class;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/StackTraceElement;",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x3

    .line 2
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 3
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    return v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;I)Ljava/lang/StackTraceElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/StackTraceElement;"
        }
    .end annotation

    .line 1
    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    const/4 v0, 0x3

    .line 2
    invoke-static {p2, p1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdx;->zzc([Ljava/lang/StackTraceElement;Ljava/lang/Class;I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 3
    aget-object p1, p2, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzb(Ljava/lang/Class;II)[Ljava/lang/StackTraceElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;II)[",
            "Ljava/lang/StackTraceElement;"
        }
    .end annotation

    const/4 p3, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    move p3, v1

    :cond_1
    :goto_0
    const-string v2, "maxDepth must be > 0 or -1"

    .line 1
    invoke-static {p3, v2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdt;->zzc(ZLjava/lang/String;)V

    new-instance p3, Ljava/lang/Throwable;

    .line 2
    invoke-direct {p3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p3

    const/4 v2, 0x3

    .line 3
    invoke-static {p3, p1, v2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdx;->zzc([Ljava/lang/StackTraceElement;Ljava/lang/Class;I)I

    move-result p1

    if-ne p1, v0, :cond_2

    new-array p1, v1, [Ljava/lang/StackTraceElement;

    return-object p1

    .line 4
    :cond_2
    array-length v0, p3

    sub-int/2addr v0, p1

    if-lez p2, :cond_3

    if-ge p2, v0, :cond_3

    goto :goto_1

    :cond_3
    move p2, v0

    .line 5
    :goto_1
    new-array v0, p2, [Ljava/lang/StackTraceElement;

    .line 6
    invoke-static {p3, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
