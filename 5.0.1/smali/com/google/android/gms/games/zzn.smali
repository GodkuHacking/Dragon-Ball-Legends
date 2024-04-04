.class public final Lcom/google/android/gms/games/zzn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;
.implements Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$HasGoogleSignInAccountOptions;


# instance fields
.field public final zza:Z

.field public final zzb:Z

.field public final zzc:I

.field public final zzd:Z

.field public final zze:I

.field public final zzf:Ljava/lang/String;

.field public final zzg:Ljava/util/ArrayList;

.field public final zzh:Z

.field public final zzi:Z

.field public final zzj:Z

.field public final zzk:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field public final zzl:Ljava/lang/String;

.field public final zzm:I

.field public final zzn:Ljava/lang/String;

.field public final zzo:Lcom/google/android/gms/games/internal/zzl;

.field private final zzp:I


# direct methods
.method synthetic constructor <init>(ZZIZILjava/lang/String;Ljava/util/ArrayList;ZZZLcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/gms/games/internal/zzl;Lcom/google/android/gms/games/zzm;)V
    .locals 4

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/games/zzn;->zza:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/games/zzn;->zzb:Z

    const/16 v2, 0x11

    iput v2, v0, Lcom/google/android/gms/games/zzn;->zzc:I

    iput-boolean v1, v0, Lcom/google/android/gms/games/zzn;->zzd:Z

    move v2, p5

    iput v2, v0, Lcom/google/android/gms/games/zzn;->zze:I

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/games/zzn;->zzf:Ljava/lang/String;

    move-object v3, p7

    iput-object v3, v0, Lcom/google/android/gms/games/zzn;->zzg:Ljava/util/ArrayList;

    iput-boolean v1, v0, Lcom/google/android/gms/games/zzn;->zzh:Z

    iput-boolean v1, v0, Lcom/google/android/gms/games/zzn;->zzi:Z

    iput-boolean v1, v0, Lcom/google/android/gms/games/zzn;->zzj:Z

    move-object v3, p11

    iput-object v3, v0, Lcom/google/android/gms/games/zzn;->zzk:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iput-object v2, v0, Lcom/google/android/gms/games/zzn;->zzl:Ljava/lang/String;

    iput v1, v0, Lcom/google/android/gms/games/zzn;->zzp:I

    const/16 v1, 0x9

    iput v1, v0, Lcom/google/android/gms/games/zzn;->zzm:I

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/games/zzn;->zzn:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/games/zzn;->zzo:Lcom/google/android/gms/games/internal/zzl;

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/games/zzl;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/games/zzl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/zzl;-><init>(Lcom/google/android/gms/games/zzk;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/games/zzn;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/games/zzn;

    .line 3
    iget-boolean v1, p1, Lcom/google/android/gms/games/zzn;->zza:Z

    iget-boolean v1, p1, Lcom/google/android/gms/games/zzn;->zzb:Z

    iget v1, p1, Lcom/google/android/gms/games/zzn;->zzc:I

    iget-boolean v1, p1, Lcom/google/android/gms/games/zzn;->zzd:Z

    iget v1, p0, Lcom/google/android/gms/games/zzn;->zze:I

    iget v3, p1, Lcom/google/android/gms/games/zzn;->zze:I

    if-ne v1, v3, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/games/zzn;->zzf:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/games/zzn;->zzg:Ljava/util/ArrayList;

    .line 4
    iget-object v3, p1, Lcom/google/android/gms/games/zzn;->zzg:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p1, Lcom/google/android/gms/games/zzn;->zzh:Z

    iget-boolean v1, p1, Lcom/google/android/gms/games/zzn;->zzi:Z

    iget-boolean v1, p1, Lcom/google/android/gms/games/zzn;->zzj:Z

    iget-object v1, p0, Lcom/google/android/gms/games/zzn;->zzk:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/games/zzn;->zzk:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-nez v1, :cond_4

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lcom/google/android/gms/games/zzn;->zzk:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 6
    invoke-virtual {v1, v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/games/zzn;->zzl:Ljava/lang/String;

    const/4 v1, 0x0

    .line 7
    invoke-static {v1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p1, Lcom/google/android/gms/games/zzn;->zzp:I

    iget v1, p1, Lcom/google/android/gms/games/zzn;->zzm:I

    iget-object v1, p0, Lcom/google/android/gms/games/zzn;->zzn:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/games/zzn;->zzn:Ljava/lang/String;

    .line 8
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    :goto_1
    return v2
.end method

.method public final getExtensionType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getGoogleSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/zzn;->zzk:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object v0
.end method

.method public final getImpliedScopes()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/games/Games;->zzc:Lcom/google/android/gms/common/api/Scope;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/games/zzn;->zze:I

    const v1, 0x1d0316bf

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3c1

    iget-object v1, p0, Lcom/google/android/gms/games/zzn;->zzg:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0xe1781

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/games/zzn;->zzk:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x745f

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x1f

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/games/zzn;->zzn:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/zzn;->zza()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Landroid/os/Bundle;
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.google.android.gms.games.key.isHeadless"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.games.key.showConnectingPopup"

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.games.key.connectingPopupGravity"

    const/16 v3, 0x11

    .line 4
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.google.android.gms.games.key.retryingSignIn"

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v1, p0, Lcom/google/android/gms/games/zzn;->zze:I

    const-string v3, "com.google.android.gms.games.key.sdkVariant"

    .line 6
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.google.android.gms.games.key.forceResolveAccountKey"

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/games/zzn;->zzg:Ljava/util/ArrayList;

    const-string v4, "com.google.android.gms.games.key.proxyApis"

    .line 8
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "com.google.android.gms.games.key.unauthenticated"

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.games.key.skipPgaCheck"

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.games.key.skipWelcomePopup"

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/games/zzn;->zzk:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    const-string v2, "com.google.android.gms.games.key.googleSignInAccount"

    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "com.google.android.gms.games.key.realClientPackageName"

    .line 13
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.games.key.API_VERSION"

    const/16 v2, 0x9

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/gms/games/zzn;->zzn:Ljava/lang/String;

    const-string v2, "com.google.android.gms.games.key.gameRunToken"

    .line 15
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
