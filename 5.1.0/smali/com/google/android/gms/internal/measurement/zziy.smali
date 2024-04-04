.class final Lcom/google/android/gms/internal/measurement/zziy;
.super Lcom/google/android/gms/internal/measurement/zzis;
.source "com.google.android.gms:play-services-measurement-base@@21.3.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzja;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzja;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzja;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzis;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zziy;->zza:Lcom/google/android/gms/internal/measurement/zzja;

    return-void
.end method


# virtual methods
.method protected final zza(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziy;->zza:Lcom/google/android/gms/internal/measurement/zzja;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzja;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
