.class final Lcom/google/android/gms/games/zzg;
.super Lcom/google/android/gms/games/zzj;
.source "com.google.android.gms:play-services-games-v2@@17.0.0"


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/games/zzj;-><init>(Lcom/google/android/gms/games/zzi;)V

    return-void
.end method


# virtual methods
.method public final synthetic getImpliedScopes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/games/zzn;

    .line 2
    sget-object p1, Lcom/google/android/gms/games/Games;->zzb:Lcom/google/android/gms/common/api/Scope;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
