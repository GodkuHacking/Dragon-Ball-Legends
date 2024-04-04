.class public final Lcom/google/android/gms/games/AuthenticationResult;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.0.0"


# static fields
.field public static final zza:Lcom/google/android/gms/games/AuthenticationResult;

.field public static final zzb:Lcom/google/android/gms/games/AuthenticationResult;


# instance fields
.field private final zzc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/AuthenticationResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/AuthenticationResult;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/games/AuthenticationResult;->zza:Lcom/google/android/gms/games/AuthenticationResult;

    new-instance v0, Lcom/google/android/gms/games/AuthenticationResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/AuthenticationResult;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/games/AuthenticationResult;->zzb:Lcom/google/android/gms/games/AuthenticationResult;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/games/AuthenticationResult;->zzc:Z

    return-void
.end method


# virtual methods
.method public isAuthenticated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/AuthenticationResult;->zzc:Z

    return v0
.end method
