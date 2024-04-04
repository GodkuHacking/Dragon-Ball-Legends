.class final Lcom/google/android/gms/internal/play_games_inputmapping/zzdu;
.super Ljava/lang/ThreadLocal;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzdv;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdv;-><init>()V

    return-object v0
.end method
