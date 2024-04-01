.class public final Lcom/google/android/gms/internal/play_games_inputmapping/zzaj;
.super Ljava/lang/Exception;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# direct methods
.method constructor <init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/play_games_inputmapping/zzat;[Ljava/lang/StackTraceElement;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzat;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzaj;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method


# virtual methods
.method public final fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    return-object p0
.end method
