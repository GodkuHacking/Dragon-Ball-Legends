.class public final enum Lcom/google/android/gms/internal/firebase_messaging/zzr;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-messaging@@23.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/firebase_messaging/zzr;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/firebase_messaging/zzr;

.field public static final enum zzb:Lcom/google/android/gms/internal/firebase_messaging/zzr;

.field public static final enum zzc:Lcom/google/android/gms/internal/firebase_messaging/zzr;

.field private static final synthetic zzd:[Lcom/google/android/gms/internal/firebase_messaging/zzr;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzr;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase_messaging/zzr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzr;->zza:Lcom/google/android/gms/internal/firebase_messaging/zzr;

    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzr;

    const-string v1, "SIGNED"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/firebase_messaging/zzr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzr;->zzb:Lcom/google/android/gms/internal/firebase_messaging/zzr;

    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzr;

    const-string v1, "FIXED"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/firebase_messaging/zzr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzr;->zzc:Lcom/google/android/gms/internal/firebase_messaging/zzr;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/android/gms/internal/firebase_messaging/zzr;

    sget-object v5, Lcom/google/android/gms/internal/firebase_messaging/zzr;->zza:Lcom/google/android/gms/internal/firebase_messaging/zzr;

    aput-object v5, v1, v2

    sget-object v2, Lcom/google/android/gms/internal/firebase_messaging/zzr;->zzb:Lcom/google/android/gms/internal/firebase_messaging/zzr;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/google/android/gms/internal/firebase_messaging/zzr;->zzd:[Lcom/google/android/gms/internal/firebase_messaging/zzr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/firebase_messaging/zzr;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzr;->zzd:[Lcom/google/android/gms/internal/firebase_messaging/zzr;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/firebase_messaging/zzr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/firebase_messaging/zzr;

    return-object v0
.end method
