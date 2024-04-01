.class public final Lcom/google/android/gms/internal/firebase_messaging/zzo;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@23.0.0"


# instance fields
.field private zza:I

.field private final zzb:Lcom/google/android/gms/internal/firebase_messaging/zzr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzr;->zza:Lcom/google/android/gms/internal/firebase_messaging/zzr;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zzb:Lcom/google/android/gms/internal/firebase_messaging/zzr;

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/firebase_messaging/zzo;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zza:I

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase_messaging/zzs;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzn;

    iget v1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zza:I

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_messaging/zzo;->zzb:Lcom/google/android/gms/internal/firebase_messaging/zzr;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase_messaging/zzn;-><init>(ILcom/google/android/gms/internal/firebase_messaging/zzr;)V

    return-object v0
.end method
