.class public final Lcom/google/android/gms/games/zzl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.0.0"


# static fields
.field private static final zzf:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field zza:I

.field final zzb:Ljava/util/ArrayList;

.field zzc:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field zzd:Ljava/lang/String;

.field zze:Lcom/google/android/gms/games/internal/zzl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/games/zzl;->zzf:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1110

    iput v0, p0, Lcom/google/android/gms/games/zzl;->zza:I

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/zzl;->zzb:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/zzl;->zzc:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iput-object v0, p0, Lcom/google/android/gms/games/zzl;->zzd:Ljava/lang/String;

    .line 3
    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/zzk;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x1110

    iput p1, p0, Lcom/google/android/gms/games/zzl;->zza:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/zzl;->zzb:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/games/zzl;->zzc:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iput-object p1, p0, Lcom/google/android/gms/games/zzl;->zzd:Ljava/lang/String;

    sget-object p1, Lcom/google/android/gms/games/internal/zzl;->zza:Lcom/google/android/gms/games/internal/zzl;

    iput-object p1, p0, Lcom/google/android/gms/games/zzl;->zze:Lcom/google/android/gms/games/internal/zzl;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/games/zzl;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/zzl;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/games/internal/zzl;)Lcom/google/android/gms/games/zzl;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/internal/zzl;

    iput-object p1, p0, Lcom/google/android/gms/games/zzl;->zze:Lcom/google/android/gms/games/internal/zzl;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/zzl;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/zzl;->zzc:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object p0
.end method

.method public final zzd(I)Lcom/google/android/gms/games/zzl;
    .locals 0

    const p1, 0x201113

    iput p1, p0, Lcom/google/android/gms/games/zzl;->zza:I

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/games/zzn;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    new-instance v19, Lcom/google/android/gms/games/zzn;

    move-object/from16 v1, v19

    iget v6, v0, Lcom/google/android/gms/games/zzl;->zza:I

    iget-object v8, v0, Lcom/google/android/gms/games/zzl;->zzb:Ljava/util/ArrayList;

    iget-object v12, v0, Lcom/google/android/gms/games/zzl;->zzc:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iget-object v2, v0, Lcom/google/android/gms/games/zzl;->zzd:Ljava/lang/String;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/google/android/gms/games/zzl;->zze:Lcom/google/android/gms/games/internal/zzl;

    move-object/from16 v17, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x9

    const/16 v18, 0x0

    invoke-direct/range {v1 .. v18}, Lcom/google/android/gms/games/zzn;-><init>(ZZIZILjava/lang/String;Ljava/util/ArrayList;ZZZLcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/gms/games/internal/zzl;Lcom/google/android/gms/games/zzm;)V

    return-object v19
.end method
