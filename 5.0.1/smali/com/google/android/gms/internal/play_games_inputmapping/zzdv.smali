.class public final Lcom/google/android/gms/internal/play_games_inputmapping/zzdv;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final zza:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzdv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzb:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdv;->zza:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdv;->zzb:I

    return-void
.end method

.method public static zza()I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdv;->zza:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdv;

    iget v0, v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdv;->zzb:I

    return v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/play_games_inputmapping/zzdv;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdv;->zza:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdv;

    .line 2
    iget v1, v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdv;->zzb:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdv;->zzb:I

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Overflow of RecursionDepth (possible error in core library)"

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdv;->zzb:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdv;->zzb:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Mismatched calls to RecursionDepth (possible error in core library)"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdv;->zzb:I

    return v0
.end method
