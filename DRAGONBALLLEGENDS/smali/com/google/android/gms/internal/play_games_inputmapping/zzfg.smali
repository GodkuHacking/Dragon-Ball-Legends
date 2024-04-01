.class public abstract Lcom/google/android/gms/internal/play_games_inputmapping/zzfg;
.super Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/play_games_inputmapping/zzgo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzfg<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzfi<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzgo;"
    }
.end annotation


# instance fields
.field protected final zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzfc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfc;->zza()Lcom/google/android/gms/internal/play_games_inputmapping/zzfc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzfg;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzfc;

    return-void
.end method
